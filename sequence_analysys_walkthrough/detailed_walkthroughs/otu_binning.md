# OTU Binning

#### Authorship
Spencer Debenport, Nick Youngblut, Chantal Koechli (2016)

### Initialize your Notebook and Set Variables
* First we must initialize your notebook, set important variables, and load all necessary libraries.

  ```r
workDir = '/home/USERNAME/NOTEBOOK/PROJECT_NAME/SUBDIRECTORY_WHERE_DATA_IS_LOCATED'
baseDir = '/home/USERNAME/NOTEBOOK/PROJECT_NAME/'
databaseDir = '/home/USERNAME/NOTEBOOK/PROJECTNAME/data/databases/'
nprocs = 24
  ```
  * NOTE: Everyone organizes their data  bit differently, but in this case, we will assume that you have a general directory for this particular project, and a subdirectory within that directory where you are performing this OTU binning. Also, after you have performed the SILVA database formatting in the quality control section, you can add that formatted database to another subdirectory under your main project directory.

  ```r
import os
import re
import glob
import pandas as pd
from qiime.assign_taxonomy import UclustConsensusTaxonAssigner
from IPython.display import Image
from cogent.app.usearch import clusters_from_blast_uc_file
from cogent.parse.fasta import MinimalFastaParser as parse
  ```
  
  ```r
%load_ext rpy2.ipython
  ```
  
  ```r
%%R
library(ggplot2)
library(dplyr)
library(tidyr)
library(gridExtra)
  ```
  ```r
if not os.path.isdir(workDir):
    os.makedirs(workDir)
  ```
  
### Concatenate All Relevant QC Sequence Files
* If your full data






