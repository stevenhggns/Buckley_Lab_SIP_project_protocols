General server ettiquette
=========================

* Before running a substantial job (ie., a job that's going to use many processors or a lot of memory):
  * Check to see what jobs are currently running on the server with `htop` or `top`
  * If the job will be running for a while, contact the other users and let them know.
  * You can use the `nice` command to give your job a lower priority. 
  See [this](http://www.thegeekstuff.com/2013/08/nice-renice-command-examples/) for more information.
* Compress or delete old files. 
  * This frees up hard drive space.
  * To get file sizes: `ls -thlc`
  * To get size of directories: `du -d 1 -h`
  * To compress a file (eg., "myfile.txt"): `pigz myfile.txt`
  * To compress all files in a directory (eg., "./mydir/"): `pigz -r ./mydir/`
  * To uncompress: `pigz -d myfile.gz`
* Shutdown old Jupyter Notebook kernels.
  * This frees up memory. 
  * The variables in each kernel take up memory, and large objects (like a big dataframe) can take up a lot of memory.
  * Variables that are no longer needed can be reassigned to 0 or `NA` to free up memory. 

