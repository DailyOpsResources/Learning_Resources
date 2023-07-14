**Repository Initialization:**
git init: Initialize a new Git repository in the current directory.

Cloning and Remote Operations:
git clone <repository_url>: Clone a remote repository to your local machine.
git remote add origin <repository_url>: Add a remote repository as the origin.
git pull: Fetch and merge the latest changes from a remote repository to your local branch.
git push origin <branch_name>: Push your local commits to a remote repository.

Branch Operations:
git branch: List all branches.
git branch <new_branch_name>: Create a new branch.
git branch -d <branch_name>: Delete a branch.
git checkout <branch_name>: Switch to a different branch.

Staging and Committing Changes:
git status: Check the current status of your working directory and staged changes.
git add <file1> <file2> ...: Stage changes for commit.
git commit -m "Commit message": Commit the staged changes with a descriptive message.

Merging and Reverting Changes:
git merge <branch_name>: Merge changes from one branch into another.
git diff <commit1> <commit2>: Show differences between commits.
git diff <branch1> <branch2>: Show differences between branches.
git diff <file>: Show differences in a file.
git reset <commit>: Reset the current branch to a specific commit.
git reset --hard HEAD~<number_of_commits>: Undo commits.

Viewing History:
git log: View commit history.
git log --oneline: View commit history in a condensed format.

Miscellaneous:
git config --global user.name "Your Name": Set your Git username globally.
git config --global user.email "your.email@example.com": Set your Git email globally.