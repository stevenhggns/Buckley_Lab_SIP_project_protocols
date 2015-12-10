git
===

## Authorship

Nick Youngblut (2015)


## Printing this protocol

See **Printing protocols** in the [README](../README.md#printing-protocols-conversion-of-protocols-to-pdf)


## Online resources

* [Pro Git book](http://git-scm.com/book/en/v2)
* [top10 git tutorials](http://sixrevisions.com/resources/git-tutorials-beginners/)
* [Vogella](http://www.vogella.com/articles/Git/article.html#git)



## git basics

### Scheme 

* git is used for collaborating on the same set of files (eg., Jupyter notebooks).
  * It allows >= 1 user to edit the same files, combine changes, and revert
  back to old file versions if needed.
* The central location of the Git repos on the server is `/var/git/`.
* With git, you will make a clone (copy) of the repo, then you can edit files in the
repo, commit (save) those changes, and push (upload) them back to the central repo
(`/var/git/`).
  * Other users can pull (download) those changes to their own copy of the repo.
  * ALSO, you can easily revert back to an old version of >=1 file in the repo.


### Cloning a repo

* This will make a local copy of the repo.

1. Type: `git clone /path/to/repo/`
  * A new directory should have been created in your current working directory.


### Pulling from origin 

* This assumes that you are in a git repo.

1. Type: `git pull origin master`
  * This pulls any changes

### Commiting and pushing changes

* This assumes that you are in a git repo.
* This also assumes that you've edited >=1 file in the repo.

1. To see the changes you've made to files in the repo, type:
  * `git status` 
1. To make sure git is tracking all files in the repo, type:
  * `git add .`
1. To commit (save) all of those changes, type:
  * `git commit -a -m "I added more documentation to file X"`
    * The `-m` is used to attach a message to the commit, so you and others have some idea
    on what changed for this commit.
1. To push changes to the central repo, type:
  * `git push origin master`
    * This is assuming that you are in the `master` branch.

### Reverting back to an old version of a file

Let's assume you want to revert a file named `TEST.txt`

* If the changes have NOT been committed yet:
  * `git checkout TEST.txt`
* If you want to revert back to a version from a previous commit:
  * Get the commit ID:
    * `git log`
    * copy the string of numbers & letters following `commit`
	  * eg., `9558be93892393fa661392fb55686016f0dfb5f5`
  * View the old file: 
    * `git show 9558be93892393fa661392fb55686016f0dfb5f5:TEST.txt`
      * Use tab-completion after to colon to list files in the old commit.
  * Save the old file over the new file:
    * `git show 9558be93892393fa661392fb55686016f0dfb5f5:TEST.txt > TEST.txt`  

  
## Code to make using git easier
  
~~~  
# alias for pretty git log
alias git-lg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"  
~~~