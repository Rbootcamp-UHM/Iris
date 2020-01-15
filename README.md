# Iris
Exploring Iris data and GitHub practice

# R Task 

1. Clone the Iris-repo repository (instructions below) into your Rclass folder and review code in
   ```
   dataframedemo.R  # Dataframe access
   iris_stub.R  # A stub to get started with your script.
   ```
2. Develop your own script to explore the iris dataset. After testing the code samples, choose a strategy (one method - maybe histogram? maybe bivariate plot? something else?) to focus on. Think about answering the question *** Are the iris varieties different in petal and sepal size? ***
3. Start writing a clean script (give it descriptive name, e.g., `iris_histogram_myinitials.R`, saved in `Iris-repo` on your computer) to show us graphically what you explored. We will keep working on it tomorrow.

# Push your work back up to GitHub

4. Create your own branch on the `Iris-repo`. From your Terminal/CMD window (in `Iris-repo`), first check the status of your branches:
   ```
   git branch 
   ```
Git will tell you what branches already exist on `Iris-repo`. One will be master, and there may be others if your classmates added some. Now make your own branch (give it your own name "my-awesome-branch") and check it out (this means Git will start tracking the branch):
   ```
   git branch my-awesome-branch
   git checkout my-awesome-branch
   ```

When youʻre done working on your script, push it back up to the repository. Check status first:

   ```
   git status
   ```
You should get a message that you have changes not staged for commit on your branch. This means git found new changes. 
Add the new files on the docket to push up to your branch on github:

   ```
   git add myscript.R    
   ```

Write a commit message:

   ```
   git commit -m "Add script to make xx plots"
   ```
Finally push up the changes to your own branch. Donʻt worry it will not change the "master":
   ```
   git push origin my-awesome-branch
   ```
Everyone can now see the work youʻve done in your own branch.    


# Using Git to clone this directory and keep it up to date:
Git is a free open-source version control system. You can copy repositories of files to your local computer, and use Git to automatically update your local copies when any new files are added to the server (by me). **Please let me know if any of this needs to be corrected**
1. Install Git if you havenʻt aready https://git-scm.com/downloads
2. **Mac USERS** open your Terminal.app (look under Applications > Utilities)  
   **PC USERS** open your "Command Prompt". Either search for "Command Prompt" or look for it under your Start Menu > Programs list. If you canʻt find it [read this](https://www.digitalcitizen.life/7-ways-launch-command-prompt-windows-7-windows-8)
3. Navigate to your Rclass working directory. (The terminal window or the command prompt window is your terminal-interface into your computer.) If you are on a Mac and you created it your Documents directory it would be: 

   ```
   cd ~/Documents/Rclass
   ```

   On a PC it would be similar to one of:

   ```
   cd ʻC:\Documents\Rclassʻ
   cd ʻC:\Users\myusername\Documents\Rclassʻ
   ```

4. Clone the repository. Type the line below, hit return, and it will create a folder called `Histories` in your working directory that contains a copy of all the files currently at that location on the server. **Note this will create a new copy of the whole directory, so you only do this the first time.** 

    ```
    git clone https://github.com/Rbootcamp-UHM/Iris-repo.git
    ```
 
5. Update the repository. Later when Iʻve added more files, do the following to add the new files from the server to your local directory.   
      1. Open your terminal and navigate to within your Histories folder:

      ```
      cd ~/Rclass/Iris-repo
      ```
      2. Update the repository:

      ```
      git pull origin master
      ```
   Voila! All the new files have been added to your local directory. The last line tells git to pull any new changes from the origin (the server where I am putting all the files) to the master (your local directory). 

6. If you want to check if all is up to date:

   ```
   git status
   ```
   
   If everyting is up to date it will say `Your branch is up-to-date with 'origin/master'. nothing to commit, working tree clean`

7. Note: Git works directory by directory (it saves a hidden status file within the cloned directory).  If you want to clone the Data directory, for example, you will have to repeat steps 3-> for the Data directory and each directory you want to clone. 
