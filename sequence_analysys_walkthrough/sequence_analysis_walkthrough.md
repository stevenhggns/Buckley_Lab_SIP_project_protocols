#Workflow for Sequencing Pipeline

##Downloading Links to Sequences

* First, you will receive an email from Peter Schweitzer with links to your sequences.
* Expect 4 files in Peter's email:
  * Forward Indices
  * Reverse Indicies
  * Forward Reads
  * Reverse Reads
* Using `wget`, download your files to the sequence directory on the server.
  * [Detailed Walkthrough for `wget`](./detailed_walkthroughs/wget.md)

NOTE: At this point, raw read QC analysis can be performed. Refer to the `raw_read_QC` Jupyter Notebook in the `fullCyc` dataset for these commands.

## Merge Sequences Together 

* `PEAR` is used to merge sequences from Read1 and Read2 together, while updating the quality scores of bases based on the overlapping region.
* First, we run `PEAR` in order to merge reads 1 and 2 together.
* Then we create a screed database to allow to fast access to information about the merged sequences (length, quality, etc.)
* Finally we run basic quality statistics regarding the quality scores of our sequences. 

[Detailed Walkthrough for `PEAR`](./detailed_walkthroughs/pear.md)

## Demultiplex Sequences

* At this stage, your sequences will be separated by their index reads.
* A metadata file is needed to assign sample names based on the index sequences. 
* First, screed databases are created for the two index read files.
* The merged sequence file is cycled through, replacing raw read names with sample IDs based on the metadata file loaded.
* Basic summary information such as number of sequences per sample can then be plotted.

[Detailed Walkthrough for Demultiplexing](./detailed_walkthroughs/demultiplexing.md)

## Quality Control of Sequences

* Now that we have demultiplexed our sequences, we need to run some quality control measures before downstream applications.
* First, we will remove any sequences that exceed our maximum allowed error thresholds.
* All sequences with unassigned 'N' bases are also removed.
* Remove sequences that do not align to the expected region (usually 16S or ITS regions).
* Summarize the total number of sequences in each sample after these quality control measures.

[Detailed Walkthrough for Quality Control](./detailed_walkthroughs/qc.md)



