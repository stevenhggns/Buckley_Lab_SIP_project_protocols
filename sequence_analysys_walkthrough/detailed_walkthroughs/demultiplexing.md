# Demultiplexing Sequence Reads by Sample ID

This walkthrough will lead you through demultiplexing your sequences by index read and the creation of some basic summary information regarding the number of sequences in each sample.

### Initializing Your Jupyter Notebook
* Start by importing all libraries you will need for all steps involved in demultiplexing.

    ```python
import screed
import pandas as pd
from collections import Counter
import matplotlib.pyplot as plt
import numpy as np
from mpltools import style
import mpld3

style.use("ggplot")

%matplotlib inline
    ```

### Load Your Index Read Files
* Next, set variables to your index read files.

    ```python
ir1 = "/var/seq_data/PROJECT_NAME/index_read1.fastq.gz"
ir2 = "/var/seq_data/PROJECT_NAME/index_read2.fastq.gz"
    ```

* Create screed databases for these index read files.

    ```python
screed.read_fastq_sequences(ir1)
screed.read_fastq_sequences(ir2)

ir1db = screed.ScreedDB(ir1)
ir2db = screed.ScreedDB(ir2)
    ```

### Load Mapping File
* The mapping file is a critical component for demultiplexing your sequences.
* This file contains the sample names assigned to each index read, allowing our demultiplexing script to rename sequences according to the sample that they came from.
* Additional metadata describing each sample should be included in this file, for downstream application in the `phyloseq` R package.
* The format of this file is critical, with an example shown [here](INSERT_LINK_HERE).


  ```python
df_map = pd.read_csv("data/Mapping_file.txt", delimiter="\t", usecols=[0,1,2], names=["SampleID","i1","i2"])
df_map
  ```
  ![Example Table Output](https://cloud.githubusercontent.com/assets/7449496/12459259/d4d1a1cc-bf7b-11e5-88fa-4730b005a140.png)

  * NOTE: Using this code, the first three columns of your metadata file must be the SampleID, index read 1 sequence, and index read 2 sequence.












