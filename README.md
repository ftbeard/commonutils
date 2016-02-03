Install:
--------
- make install
- when git- files are in your $PATH, then you can use them as git commands

BINARIES:
=========
GitLab tool :
-------------
export GLTOKEN=YourSecretGitLabAPIToken
```text
usage : git lab [command]
    new [name] : create a new repository
    clone [name] : clone the repository
    delete [name] : delete the repository
    list : list all the repositories on the GitLab server
    -h : show this help
```
Confirm :
---------
```text
usage : confirm [prompt]
    display prompt if given, then read for input
    return 0 if input in ['yes', 'y', 'Y'], 1 otherwise
```
Gen:
----
```text
usage : gen "pattern"
    generate formatted strings
    example:
        gen "/* 4- */" -> /* ---- */
```
Note:
=====
Don't forget to add public ssh key to GitLab private panel
