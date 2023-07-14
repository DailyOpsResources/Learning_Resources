**Repository Initialization:** <br>
git init: Initialize a new Git repository in the current directory.<br>

**Cloning and Remote Operations:** <br>
git clone <repository_url>: Clone a remote repository to your local machine. <br>
git remote add origin <repository_url>: Add a remote repository as the origin.<br> 
git pull: Fetch and merge the latest changes from a remote repository to your local branch.<br>
git push origin <branch_name>: Push your local commits to a remote repository.<br>

**Branch Operations:** <br>
git branch: List all branches.<br>
git branch <new_branch_name>: Create a new branch. <br>
git branch -d <branch_name>: Delete a branch.<br>
git checkout <branch_name>: Switch to a different branch.<br>

**Staging and Committing Changes:** <br>
git status: Check the current status of your working directory and staged changes.<br>
git add <file1> <file2> ...: Stage changes for commit.<br>
git commit -m "Commit message": Commit the staged changes with a descriptive message.<br>

**Merging and Reverting Changes:** <br>
git merge <branch_name>: Merge changes from one branch into another. <br>
git diff <commit1> <commit2>: Show differences between commits.<br>
git diff <branch1> <branch2>: Show differences between branches.<br>
git diff <file>: Show differences in a file.<br>
git reset <commit>: Reset the current branch to a specific commit.<br>
git reset --hard HEAD~<number_of_commits>: Undo commits.<br>

**Viewing History:**<br>
git log: View commit history.<br>
git log --oneline: View commit history in a condensed format. <br>

**Miscellaneous:**<br>
git config --global user.name "Your Name": Set your Git username globally. <br>
git config --global user.email "your.email@example.com": Set your Git email globally. <br>
