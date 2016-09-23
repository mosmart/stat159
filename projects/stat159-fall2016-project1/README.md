# Reproducing My Paper Instructions 
 ---
#### Author:   
Morgan Smart  

#### Setting up the file structure:  

The file structure of the files used to create the paper is as follows: 
   
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

The following code was used to set up the directories, create empty files, and download images used in the paper:  

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


#### Assembling the Paper:
1. Clone my github repository: https://github.com/mosmart/stat159-Morgan-Smart.git
2. Navigate to ./projects/stat159-fall2016-project1 (this is where all of the files used to create this paper are stored)
2. In the directory stat159-fall2016-project1/, run the command `make all` to concatenate the .md files in ./paper/sections/ into paper.md and change the file type of paper.md to html. This results in the output file: paper.html. The paper.html file is stored in ./paper/
 
[Creative Commons License](https://creativecommons.org/licenses/by-nc/4.0/)  
![creative commones license](https://i.creativecommons.org/l/by-nc/4.0/88x31.png)

