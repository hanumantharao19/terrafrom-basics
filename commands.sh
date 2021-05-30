git config –global user.name “hanumantharao”  
git config –global user.email “hanumantharao1986.medikonda@gmail.com” 
git init reponame  ---it is used to intiailse the new repository
git clone git@github.com:hanumantharao19/terrafrom-basics.git
git clone https://github.com/hanumantharao19/terrafrom-basics.git
git add . ---it is used to add the all files in the current directory to stage area
git commit  -m "commit message" ---commit the files to local repository
git checkout filename  ---It is used to discard the changes in the file
git checkout *    ---> it is used to discard changes in all files
git status ---> it shows the un tracked files and staged files
git log  -- it is used list the commit history
git reset filename or git reset HEAD filename  ---> it is used to unstage the file from staging area
git reset HEAD~1  -it is to used to undo the commit in local repo
git rest HEAD~3  ---it is to to undo last three commits
git reset --soft HAED~1 --undo the recent commit and files available in staging area
git reset --hard HEAD~1 --undo the recent commit and files also not available in working area
git branch --it is used to list the branches
git checkout  branchname --it is used to switch to the other branch
git checkout -b branchname --it is used to create new branch from existing branch
git branch -d branchname  --it is used to deleted the branch
git branch -D branchname  --it is used to delete branch forcefully

