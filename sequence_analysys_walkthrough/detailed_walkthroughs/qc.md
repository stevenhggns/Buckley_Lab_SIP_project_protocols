# Quality Control of Sequences

In this walkthrough, we will go through the steps necessary to clean up your sequences and discard any that do not meet our quality control standards.

### Seting variables and Initializing Jupyter Notebook
* Start your notebook by setting your directory and file variables, and the threshold value for maximum expected error.

  ```python
workDir = '/var/seq_data/PROJECT_NAME/QC/'
seqFile = 'pear_merged-YYYY-MM-DD.assembled.dmult.fastq'

# number of processors
nprocs = 24

# max expected error
maxee = 1
  ```
  
* Load all libraries needed for this notebook.

  ```python
from screed.fasta import fasta_iter
from pandas import DataFrame
import os
import re
import pandas as pd
from cogent import DNA
from qiime.assign_taxonomy import UclustConsensusTaxonAssigner
from IPython.display import Image
  ```

