# Discussion

### What is <img src="../../images/markdown-logo.png" width="55"> ?

Markdown is a text formatter that turns plain text into things such as headers, bolded text, and bulleted lists. Its designed purpose was to be an alternative to HTML that would allow people with no HTML experience to create web pages. However, it's also a great way to format text because it's syntax is accepted by many content management solutions such as Reddit and GitHub. Thus, papers written in markdown won't be misconstrued as often and are easier to reproduce because the syntax they are written in is widely accepted by many text editing and displaying platforms. 

### What is <img src="../../images/git-logo.png" width="55"> ?

Git is a form a version control. While one could save several versions of code or a paper, storing all of these versions takes up space and without good file organization it could be very hard to keep track of which version is which. Git takes care of these issues by tracking and storing changes all in the same file. Additionally, one can add comments every time he or she makes a change to keep track of the changes being made. If someone wants to go back to view his or her history, he or she can do this by typing '''git log'''. This command will show the history of time of and the comment made for each change. If the user wants to go back to a prior version of his file, he can locate that desired version in his history and convert back to it using the command '''git checkout'''. 

Git also enables collaboration on a file. If two users want to edit the same file, they each can create a branch, edit the file separately, and then merge the two versions of the file together. Git will track the changes made by each user and save these changes in the merged file. Then, if a user wants to go back and see who made what changes, he can.

Using Git for version control and collaboration with version control leads to better documentation of the file development process and thus more accuracy because it's easy to check changes being made and make changes without overwriting another collaborators changes. This will ultimately lead to better reproducibility because the file development process was tracked.

### What is <img src="../../images/github-logo.png" width="100"> ?

GitHub is a cloud one can store files on. One can create several GitHub repositories and store files for each project he works on in each repository. The repositories on a users account on github.com are that users remote repositories. He can then clone his repository to his local computer, creating an identical version of the remote repository as a local repository. GitHub also come equipped for a README.md file and Git version control. A README.md file is a markdown file that describes the content of a GitHub repository. If a user wants his research in a given repository to be reproducible, he should describe how to reproduce his research in the README.md file.

GitHub has several benefits. One benefit is GitHub is a cloud. If file storage on a users computer is low, no problem: store the files on GitHub. A second benefit is a user can make his GitHub account public so others can view, comment on, and even edit his files if permission is granted. A third benefit is GitHub leads to easier to reproduce research. If a repository is made public, any GitHub user can clone the repository to her local computer and re-run the analysis (permitting that all required files are in the repository and the README.md file discribes how to reproduce the research).

### What is <img src="../../images/pandoc-logo.png" width = "250"> ?

Pandoc is ...

### What is Makefile?

Makefile is ...

### The Paper Writing Experience <img src="../../images/stat159-logo.png" width="60"> 

Writing this paper demonstrated how useful Markdown, Git, GitHub, pandoc, and Makefile can be. When writing prior paper, I've always stumbled upon wanting to go back to an old version or making my output prettier and using these tools rather than Microsoft Word solved these issues.

