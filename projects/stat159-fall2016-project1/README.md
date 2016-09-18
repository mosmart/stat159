# Reproducing My Paper Instructions 
 ---
#### Author:   
Morgan Smart  

#### Setting up the file structure:  

The final file structure will look as follows: 
   
        stat159-fall2016-project1/    
            .gitignore
            README.md
            Makefile
            paper/
                sections/  
            		00-abstract.md  
            		01-introduction.md   
            		02-discussion.md    
            		03-conclusions.md  
        		paper.md    
        		paper.html
    		images/
        		git-logo.png
        		github-logo.png
        		markdown-logo.png
        		pandoc-logo.png
        		stat159-logo.png

Use the following code to set up the directories, create empty files, and download images:  

        mkdir stat159-fall2016-project1/
	    cd stat159-fall2016-project1/
	    mkdir paper
	    cd paper
	    mkdir sections
	    cd sections
	    touch 00-abstract.md
        touch 01-introduction.md
        touch 02-discussion.md
        touch 03-conclusions.md
        cd ../..
	    mkdir images
	    curl -O https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/git-logo.png
	    curl -O https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/github-logo.png
	    curl -O https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/markdown-logo.png
	    curl -O https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/pandoc-logo.png
	    curl -O https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/stat159-logo.png


#### Writing the Paper:
1. Add content to the .md files in the directory sections/  
    * You have to describe---in your own words---how you work on this assignment (tell us about your experience), commenting on the following aspects:
        * Explain what is a Makefile and the role it plays in this reproducible workflow.
        * Explain what is Git, and its role in this reproducible workflow.
        * Explain what is GitHub, and its role in this project.
        * Explain what is pandoc, and comment on its usefulness (or advantages).
        * Explain what is Markdown.
        * What resources you used to get the job done?
        * What were the "easy" parts?
        * What were the challenging parts?
        * What things you were stuck with?
        * What was the most time consuming part?
        * Did you work with and/or get help from someone else? If yes, in what manner?
        * How much time did it take?
    * After creating the text content, add the .pgn images from the directory images/ to the .md files where you deem fit
2. Stich the .md files in the directory sections/ together and call this file paper.md
3. Create the Makefile containing two targets: the html paper paper.html, and a clean phony target that removes the html file.
4. Add text content to the README.md (written in markdown) describing the project's structure, author's name, and creative commons license of your choice.
 
[Creative Commons License](https://creativecommons.org/licenses/by-nc/4.0/)  
![creative commones license](https://i.creativecommons.org/l/by-nc/4.0/88x31.png)

