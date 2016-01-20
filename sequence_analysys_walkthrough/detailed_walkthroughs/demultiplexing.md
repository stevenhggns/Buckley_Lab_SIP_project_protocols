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





