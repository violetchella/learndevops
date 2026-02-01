working stage(untracked files U and modified files M)  --> Staged --> Commited
###### Creating repo and initalizing
Run mkdir /home/sarah/story-blog to create directory and then run the following commands :
cd /home/sarah/story-blog
git init

Run ls -la inside /home/sarah/story-blog directory to see hidden folders  ls-list  la-longformat all files inclusing hidden.

##### creating configuration
Before making your first commit, you need to configure the Git user to record who is making the commit.
git config user.email sarah@example.com

Use the following commands to set your Git user information for this repository:
    git config user.email sarah@example.com
    git config user.name sarah

You can verify your settings with:
    git config user.email
    git config user.name


##### add (to staged mode)
    git add first.txt
 or
    git add .     ( adds all the files)

#### Commit
Run the following command to commit your staged file:
    git commit -m "Added the lion and mouse story"

- to change the message after committing:
    git commit --amend -m "Changed message"

- can also do add and commit in a single line.
    git add .;git commit -m "Added the lion and mouse story"


- automatically stages all the untracted files and commits
    git commit -am 'Fix typo in story title'

    Scenario                   |	  Can you use git commit -am?
You modified an existing file  |   Yes — It stages and commits in one go.
You deleted a tracked file	   |   Yes — It records the deletion.
You created a new file	       |   No — You must use git add first.

##### Status
to check particular file
    git status first.txt

to check all
    git status 


#####   .gitignore
Add the file to the .gitignore file by executing the following command:
     echo notes.txt >> .gitignore.

The .gitignore file tells Git which files or folders to ignore in a repository and untracked.


## w/o .gitignore:
sarah (master)$ git status notes.txt
    On branch master
    Untracked files:
        (use "git add <file>..." to include in what will be committed)
            notes.txt
nothing added to commit but untracked files present (use "git add" to track)

## with .gitignore
sarah (master)$ echo notes.txt >> .gitignore
sarah (master)$ git status notes.txt
On branch master
nothing to commit, working tree clean


##### git log
who all did what in a specific repo

- w/o files listed
    sarah (master)$   cd /home/sarah/story-blog; git log
         commit c9065f984c023bb0291c290c5a484ad77aae5ac5 (HEAD -> master)
         Author: sarah <sarah@example.com>
         Date:   Sun Feb 1 15:24:02 2026 +0000

                    Added the lion and mouse story

- with files listed(lion-and-mouse.txt ) used to search people who committed in specific files
    sarah (master)$ git log --name-only
        commit c9065f984c023bb0291c290c5a484ad77aae5ac5 (HEAD -> master)
        Author: sarah <sarah@example.com>
        Date:   Sun Feb 1 15:24:02 2026 +0000

                     Added the lion and mouse story

        lion-and-mouse.txt                


 - check last 3 commits
    git log -n 3





##### Branches

- create new branch
    violet:~/devops/gittty$ git branch newbranch

- switch to an existing branch
    violet:~/devops/gittty$ git checkout newbranch
                            M       gittty/hello-world
                            Switched to branch 'newbranch'

- create a new branch and switch to it
    violet:~/devops/gittty$ git checkout -b new2
                            Switched to a new branch 'new2'

- trying to delete by being in the same branch -- error
    violet:~/devops/gittty$ git branch -d new2
                            error: Cannot delete branch 'new2' checked out at '/home/violet/devops'
- go out to another branch before deleting
    violet:~/devops/gittty$ git checkout newbranch
                            M       gittty/hello-world
                            Switched to branch 'newbranch'

- delete a branch now
    violet:~/devops/gittty$ git branch -d new2
                            Deleted branch new2 (was de74f45).

- list all the branches
    violet:~/devops/gittty$ git branch
                            main
                            * newbranch


- git log view 

       git checkout newbranch/b1; git log --graph --decorate

    violet:~/devops/gittty$ git log --all --decorate --oneline --graph
                            * de74f45 (HEAD -> main, newbranch) gitpractice
                            * d8705e2 (origins/main) shell scripting



##### Merge branch
merge a branch to a specific branch
   $git merge newbranch




###### Git remote

- connect remote ( give a name for remote (here origins) can also have multiple remotes)
    violet:~/devops/gittty$  git remote add origins git@github.com:violetchella/learndevops.git 


- list all remote repo
    violet:~/devops/gittty$ git remote -v
                            origin  https://github.com/violetchella (fetch)
                            origin  https://github.com/violetchella (push)
                            origins git@github.com:violetchella/learndevops.git (fetch)
                            origins git@github.com:violetchella/learndevops.git (push)




##### Push

- local repo to remote ( remote name (origin)  currentbranch (master))
    violet:~/devops/gittty$  git push origin master



##### Remote repo creation

- Login to UI with given credentials. Click on + sign to create new repository.
Add Repository Name:learndevops and keep other options default. Then click on Create repository.
- give remote name and url. 
  Run cd /home/violet/learndevops; git remote add origin http://git@github.com:violetchella/learndevops.git 
- git push origin master


- to check the users in a repo
  In the top menu bar select Explore -> Users

-Who owns the most number of repositories

 In the top menu bar select Explore -> Repositories 

-to delete a repo
 Go to learndevops repository in GUI and click on settings.
 Scroll all the way down and click on Delete This Repository option. Then follow the instructions. 