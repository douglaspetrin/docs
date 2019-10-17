### CONFIGURE TOOLING

> git init  

> git config --global user.name "Douglas"  

> git config --global user.email "douglas@blabla.net"   

### MAKE CHANGES  
#### Review edits and craft a commit transaction  

> git status  

Lists all new or modified files to be committed  

> git add [file]  

Snapshots the file in preparation for versioning  

> git reset [file]  

Unstages the file, but preserve its contents  

> git diff  

Shows file differences not yet staged  

> git diff --staged  

Shows file differences between staging and the last file version  

> git commit -m "[descriptive message]"  

Records file snapshots permanently in version history

### GROUP CHANGES  
#### Name a series of commits and combine completed efforts  

> git branch  

Lists all local branches in the current repository  

> git branch [branch-name]  

Creates a new branch  

> git checkout [branch-name]  

Switches to the specified branch and updates the working directory  

> git branch -D name_of_branch  

Removes name_of_branch

> git merge [branch]  

Combines the specified branch’s history into the current branch

### SAVE FRAGMENTS  
#### Shelve and restore incomplete changes  

> git stash  

Temporarily stores all modified tracked files  

> git stash list  

Lists all stashed changesets

> git stash pop  

Restores the most recently stashed files  

> git stash drop  

Discards the most recently stashed changeset  

### REVIEW HISTORY  
#### Browse and inspect the evolution of project files  

> git log  

Lists version history for the current branch  

> git log --follow [file]  

Lists version history for a file, including renames  

> git diff [first-branch]...[second-branch]  

Shows content differences between two branches  

> git show [commit]  

> git reflog  

This displays the reflog for the local repository.

Outputs metadata and content changes of the specified commit

### MODIFY COMMITS  

>git reset --soft HEAD~1  

Delete the most recent commit keeping the work you’ve done  

>git reset --hard HEAD~1  

Delete the most recent commit destroying the work you’ve done

>git rebase -i HEAD~number_of_commits  

Edit the number_of_commits last commits


> git commit --amend  

Combines staged changes with previous commit

> git commit --amend -m "an updated commit message"

### REMOTE BRANCH  

>git remote add origin your_git_repo_url  

Adds a remote repository  

>git remote -v  

List remote repositories