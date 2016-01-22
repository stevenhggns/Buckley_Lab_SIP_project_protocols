# OTU Binning

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
* If your full data set contains samples from multiple sequencing runs, you will need to concatenate your post-QC fasta files together before doing any OTU picking. 
* In the following example, sequence files from multiple runs will be combined together for downstream analysis. The file structure for this dataset contains multiple libraries, some of which have been run multiple times, all of which have passed through quality filtering before this step.
  * If you do not have a similar file structure to this (in terms of directory and file naming schemes), you can manually concatenate all `finalQC.fasta` files from your individual libraries together.

  ```r
p = os.path.join(baseDir, '*V4_Lib*', 'run*', 'QC', 'finalQC.fasta')
fileList = glob.glob(p)
fileList
  ```
  * Example Output:
  
    ```
'/home/nick/notebook/fullCyc/data/MiSeq_16S/515f-806r/150620_V4_Lib1/run1/QC/finalQC.fasta',
'/home/nick/notebook/fullCyc/data/MiSeq_16S/515f-806r/150811_V4_Lib6/run1/QC/finalQC.fasta',
'/home/nick/notebook/fullCyc/data/MiSeq_16S/515f-806r/150715_V4_Lib3/run1/QC/finalQC.fasta',
'/home/nick/notebook/fullCyc/data/MiSeq_16S/515f-806r/150710_V4_Lib2/run1/QC/finalQC.fasta',
'/home/nick/notebook/fullCyc/data/MiSeq_16S/515f-806r/150710_V4_Lib2/run2/QC/finalQC.fasta',
'/home/nick/notebook/fullCyc/data/MiSeq_16S/515f-806r/150727_V4_Lib5/run1/QC/finalQC.fasta',
'/home/nick/notebook/fullCyc/data/MiSeq_16S/515f-806r/150721_V4_Lib4/run1/QC/finalQC.fasta'
    ```

* Next we will print the number of sequences in each file.

  ```r
# number of sequences per file
for f in fileList:
    ret = !cd $workDir; grep -c ">" $f
    print '{} : {}'.format(f, ret[0])
  ```
  * Example Output:

    ```
/home/nick/notebook/fullCyc/data/MiSeq_16S/515f-806r/150620_V4_Lib1/run1/QC/finalQC.fasta : 2660350
/home/nick/notebook/fullCyc/data/MiSeq_16S/515f-806r/150811_V4_Lib6/run1/QC/finalQC.fasta : 3879125
/home/nick/notebook/fullCyc/data/MiSeq_16S/515f-806r/150715_V4_Lib3/run1/QC/finalQC.fasta : 6770040
/home/nick/notebook/fullCyc/data/MiSeq_16S/515f-806r/150710_V4_Lib2/run1/QC/finalQC.fasta : 6463568
/home/nick/notebook/fullCyc/data/MiSeq_16S/515f-806r/150710_V4_Lib2/run2/QC/finalQC.fasta : 3178580
/home/nick/notebook/fullCyc/data/MiSeq_16S/515f-806r/150727_V4_Lib5/run1/QC/finalQC.fasta : 2134224
/home/nick/notebook/fullCyc/data/MiSeq_16S/515f-806r/150721_V4_Lib4/run1/QC/finalQC.fasta : 4237418
    ```

* These files are then concatenated together into the final QC fasta file that will be used in OTU binning.

  ```r
files = ' '.join(fileList)
!cd $workDir; \
    cat $files > finalQC.fasta
  ```
* The total number of sequences can then be printed.

  ```r
ret = !cd $workDir; grep -c ">" finalQC.fasta
print 'Number of sequences: {}'.format(ret[0])
  ```
  * Example Output:
  
    ```
Number of sequences: 29323305
    ```

### Generate a List of Only Unique Sequences
* Like we did in the previous quality control steps, we now want to generate a list of only the unique sequences in our dataset. This will reduce the time and computing power needed for OTU binning.

  ```r
!cd $workDir; \
    mothur "#unique.seqs(fasta=finalQC.fasta)" | head -n 50
  ```
  
* We can then print the total number of unique sequences in our dataset.

  ```r
!printf "Number of unique sequences: "
!cd $workDir; grep -c ">" finalQC.unique.fasta
  ```
  
  * Example Output:

    ```
Number of unique sequences: 16068344
    ```

* Next we must reformat the names of our sequences from the Mothur format in order to work with them in USEARCH.

  ```r
counts = {}
inFile = os.path.join(workDir, 'finalQC.names')
with open(inFile) as iFH:
    for line in iFH:
        seedID, seqIDs = line.split("\t")
        count = len(seqIDs.split(","))
        counts[seedID] = count 
  ```
  
  ```r
outFile = os.path.join(workDir, 'finalQC.unique.usearch_names.fasta')
with open(outFile, 'w') as oFH:
    inFile = os.path.join(workDir, 'finalQC.unique.fasta')
    for n, s in parse(open(inFile)):
        if counts[n] > 1:
            oFH.write(">%s;size=%s;\n%s\n"%(n,counts[n],s))
        else:
            continue
  ```
  
  ```r
!cd $workDir; \
    head -n 6 finalQC.unique.usearch_names.fasta
  ```
  
  * Example Output: 
  
    ```
>13C-Pal.D48.R2_F28_10;size=464;
TACAGAGGTCTCAAGCGTTGTTCGGATTCATTGGGCGTAAAGGGTGCGTAGGCGGCGCGGCAAGTCGGGTGTGAAATCTCGGAGCTTAACTCCGAAACTGCATTCGATACTGCCGTGCTTGAGGACTGGAGAGGAGACTGGAATTTACGGTGTAGCGGTGAAATGCGTAGATATCGTAAGGAAGACCAGTGGCGAAGGCGGGTCTCTGGACAGTTCCTGACGCTGAGGCACGAAGGTCAGGGGAGCAAACGGG
>13C-Van.D30.R1_F24_13;size=9669;
TACGGAGGGTGCAAGCGTTAATCGGAATTACTGGGCGTAAAGCGCACGCAGGCGGTCTGTCAAGTCGGATGTGAAATCCCCGGGCTCAACCTGGGAACTGCATTCGAAACTGGCAGGCTAGAGTCTTGTAGAGGGGGGTAGAATTCCAGGTGTAGCGGTGAAATGCGTAGAGATCTGGAGGAATACCGGTGGCGAAGGCGGCCCCCTGGACAAAGACTGACGCTCAGGTGCGAAAGCGTGGGGAGCAAACAGG
>13C-Van.D30.R1_F24_21;size=2639;
TACGTAGGTGGCAAGCGTTATCCGGAATTATTGGGCGTAAAGCGCGCGCAGGTGGTTTCTTAAGTCTGATGTGAAAGCCCACGGCTCAACCGTGGAGGGGCATTGGAAACTGGGAGACTTGAGTGCAGAAGAGGAAAGTGGAATTCCATGTGTAGCGGTGAAATGCGTAGAGATATGGAGGAACACCAGTGGCGAAGGCGACTTTCTGGTCTGTAACTGACACTGAGGCGCGAAAGCGTGGGGAGCAAACAGG
    ```



