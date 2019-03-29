**Git hook configuration**

This repo allows you to build git hooks using commit-msg as an example

Enter your desired bash logic into the commit-msg file.

To install your hook run this command from root `./installHooks.sh <filename || partial filename match>`

Upon completion the file will be installed into your root git hooks directory

If successfull it will have the same name as the file you have in the root repository

**It is important to ensure you do not change the filenames as these are structured for git compatability**

**DEBUGGING**

Ensure all files are executable by using the command `sudo chmod +x <filename>`
