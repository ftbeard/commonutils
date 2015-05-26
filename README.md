Install:
--------
copy git- files to folder in PATH, then you can use it as a git command
export GLTOKEN=YourSecretGitLabAPIToken
BINARIES:
=========
GitLab tool :
-------------
usage : git lab [command]
-   new [name] : create a new repository
-   clone [name] : clone the repository
-   delete [name] : delete the repository
-   list : list all the repositories on the GitLab server
-   -h : show this help

Confirm :
---------
usage : confirm [prompt]
-   display prompt if given, then read for input
-   return 0 if input in ['yes', 'y', 'Y'], 1 otherwise
Note:
=====
Don't forget to add public ssh key to GitLab private panel