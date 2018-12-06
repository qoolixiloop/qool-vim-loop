<h1 align="center"> qool-vim-loop </h1>

## 💖 Welcome Dear Friend!
> You are visiting the qoolixiloop **vim** repository. Please read on, if you like to find out, how you can profit from it.  
> Enjoy!  
> :sparkles: 


### ⏳ TL;DR 
> This site is all about you, getting started with **Vim as an IDE** and being able to understand the important role of the **'.vimrc' configuration file**. If you like to find out, what tools and information I prepared for you, then please click on the button below.  
>
> <details>
> <summary> 📖  read more... </summary>  
> ⏳  
>  
> #### Word of advice 
> Vim is already great and you can make it even greater. Perhaps you would like to have an all in one, highly organised IDE, where you can develop your apps simultaneously in different languages, pair-program, and even have dozens of files open in a highly structured way. 
> Then you should try out a highly effective solution with Vim, [tmux and tmate][1302]. After installing Vim from here just click the link and follow the instructions. In a few minutes your upgraded IDE is up and running. But be warned, it may well be, you never want to leave your computer again.
>
> Even more importantly than learning everything or loading your Vim with ever more plugins is getting advice on how to work with it efficiently. One of my first steps to learn the basics was the [Vimtutor][50], which taught me within an hour or so, how to open/save/close a file, copy/paste, search/replace, or how to navigate. I personally use [Tmux][1301] to create windows and splits, use the integrated Vim netrw filemanager to open files in new tabs, rename or delete them, use manual folding for easy scrolling in my large files (with a trick in my ['.vimrc'][1503] configuration file, so that they are stored after closing). Thanks to some incredibly useful plugins, I have syntax highlighting and syntax checking for different file types, as well as intellisense and word completion. In order to compare or merge files or versions I usually use vimdiff or kdiff3. And to step through my code I use a debugger like pdb or bashdb, (installed with $ sudo apt install from the Ubuntu software center).
>
> #### Why could you profit from the content of this repository?
> * There already are many good development environments availabe and some of them are quite expensive.  
> Nevertheless or because of that, you would like to do your work with an unbelievably powerful terminal application, which provides you with everything you need to write your text or code efficiently.  
>
> * It is quite likely, that you already heard about Vim and even wanted to give it a try.  
> But you noticed that it is not easy to start with.  
>
> * Maybe you already have Vim installed, and would like to try out my configuration, instead of creating one on your own.  
> But you are not sure, whether it serves your purpose.  
>
> * Or perhaps you already have your own '.vimrc' configuration and would like to copy/paste some of my content.  
> But you are struggling to understand the effects of the different parts.  
>
> * Or because you have already downloaded the '.vim' folder as well as the '.vimrc' configuration file from this repository, and have read the content of my [Vim Wiki pages][1402].  
> But now you would like to understand every single line of the ['.vimrc'][1503] file.  
>
> Did you find anything?  
> Then please read on.  
>   
> ⏳
>
> #### How qoolixiloop's repositories intend to make his friends productive
> * I am going to share my '.vim' folder and '.vimrc' configuration file.  
> This is all you need to have your new IDE up and running within minutes.
>
> * The configuraton file contains the needed instructions to run Vim as an IDE for Python, Java or Bash as well as many useful key bindings to run commands or macros, or to simply let you make thing without e.g. leaving the insert mode.  
> So you won't have to search for the needed plugins and make them work by yourself or implement and test the key bindings all by yourself.  
>
> * In case you would like to adapt the behaviour of your Vim, it helps to learn from a well documented and already running system. There are many great plugins which support you with intellisense funcionality for nearly all programming languages.  
> For that reason I will put the '.vimrc' file on my wiki page and give further [line by line explanations and comments][1503]. Usually, it is just enough to add an additional line inside the .vimrc configuration file and tell the plugin manager to download the plugin from GitHub.  
>
> * Vim has it's own programming language called Vimscript. The Vim configuration file as well as the plugins are usually written in Vimscript. That is why I will provide some useful [links][50] to resources I used to learn the language.  
> In case you prefer to use your web search engine for your questions, you will still have to try out the right words for your search and will usually end up on one of those web sites.  
>
> Does this already sound like Christmas?  
> Then please read on.  
>
> ⏳
> </details>


### 🎁 Download my '.vim' folder and my '.vimrc' file
> The file and the folder are ready to be shared. Please click the button below to get further instructions.  
>
> <details>
> <summary> 📖  show resources to download </summary>
> 🎁
>   
> 1. Go to your download folder (on Linux Ubuntu)  
>       **$ cd ~/Downloads**
>
> 2. Clone the repository into your download folder   
>       **$ git clone https://github.com/qoolixiloop/qool-vim-loop.git**
>
> 3. In case you already have an own copy of the '.vim' folder and '.vimrc' file in your home directory you might want to move them first into a backup folder or rename them.
>
> 4. Now you can savely move my '.vim' folder and '.vimrc' file it to your home directory.  
>       **$ mv src/.vimrc $HOME**  
>       **$ mv src/.vim $HOME**  
>
> 🎁
> </details>


### 📜 Instructions on how to use .vim and .vimrc
>
> Please click the button below. The steps show, how to install and run Vim. It's easy, just a few clicks and you can start writing your Python, Java or Bash Code in your new IDE.  
>
> <details>
> <summary> 📖  show the instructions </summary>
>
> 📜
>   
>    * In case you would like to install some additional software, like Shellcheck or Powerline from your software center, in Linux Ubuntu just type:  
>         **$ sudo apt install powerline**  
>         **$ sudo apt install shellcheck**  
>
>    * Open Vim on Linux Ubuntu with:  
>         **$ vim**  
>    
>    * The only plugin I left in my '.vim' folder is the plugin manager. In order to download the needed plugins, just type:  
>         **:PlugInstall**  
>    
>    * Now you can open an existing file or create a new one in a new tab in Vim.  
>         **:tabnew filename**  
>    
>    * That's it! To save the file just type:  
>         **:w**  
>
> **The essential commands in a nutshell:** If I work in a directory with dozens of files I usually open the Vim file manager with the command **:Ex**, click through the path to my files and open each file I need with **t**, make the directory the working directory with **c**, delete a file with **Shift-d** or rename it with **Shift-r**. To move between the tabs I use **gt** and **gT** to move forwards or backwards and e.g.**1gt** to jump to tab 1 where I have my file manager. To close a tab I enter **:tabc**. And to compare the content of two files, I move to the bash shell and enter **$ vimdiff file1 file2**.
>
>📜
</details>


### 🌎 Links
> To share the links of web pages, which present their content in a clear and easy to read manner is one of the main objectives of my repositories. There is no need to reinvent the wheel, because most of the time there are already excellent resources out there, where the reader can find the needed information. But often, even with the help of one's preferred search engine, one ends up spending one's time with searching instead of working.  
> By clicking the button below you will see the links of my top &&& sites for &&&. If you still struggle with the syntax, then you may consider &&& as described [here][&&&].
>
> <details>
> <summary> 📖  show the links </summary>
>
> 🌎
>
> | What the link provides ('Ctrl-click' to open in new tab) | Link to website
> |:---------------------------------------- | :----------------------------------------| 
> | `relevant links to websites:`            |
> | over 1600 excellent pages         | [Fandom vim Tips Wiki][1]  |
> | learn Vimscript and how to write a plugin | [Learn Vimscript the hard way][2]  |
> | keyboard picture with Vim key bindings   | [Graphical vi-vim Cheat Sheet and Tutorial][3] |
> | list of default vim key bindings | [Vim Commands Cheat Sheet][5] |
> | also very useful for specific questions | [Stackoverflow][4] |
> | `relavant links to my wiki pages:`       |
> | - (empty list)                           |
> |                                          |
>
> * There are many other summaries about Vim key bindings. Just type 'Vim cheet sheet' into your search engine. But be warned, for some of them you need really good eyes. I usually just copy/paste what I need into a libreoffice writer document, and make my own summary.
>
> * For descriptions about a command or function you may also find answers inside the help pages by typing:  
>         :help command  
>
> * In order to get an overview you can open the help pages and search for quickref, reference, index or user-manual.  
>         :help  
>         /quickref  
>
> * There is also a tutor page, which is very useful, to learn the basics about the Vim editor.  
>         $ vimtutor  
>
> * To check your Vim version (and e.g. whether it is compiled with Python 3)  
>         :version  
>
> 🌎
> </details>


### 🗄️ qoolixiloop's repositories
> By clicking the button below you will see a table with links to my 15 Code and 15 Wiki repositories as well as a short description of what is already available. They cover a small subset of programming languages I learned during the last 20 or so years. The focus is mainly on free and open source tools within the linux operating system universe.  
> Because the learning curve for many of those tools and languages I used was steeper than necessary, I decided to provide some of my resources, references and examples, in order to help new learners better understand important topics.  
>
> <details>
> <summary> 📖  list of repositories </summary>
>
> 🗄️
>
> **Tmux and Vim as an IDE:** There are many good development environments availabe and some of them are quite expensive. Nevertheless or because of that, I mainly use Tmux and Vim as they are two very powerful terminal applications, which provide me with everything I need to write code efficiently. That being said, I must admit, that it is not easy to start with. That is why I shared my '.vim' folder and '.vimrc' configuration file, which both contain all the necessary instructions to download the plugins and run Vim within minutes as an IDE for example for Python, Java or Bash.  
>
> **Vim as a language:** Once I started programming with Vim, I immediately came into contact with Vim's own programming language, Vimscript. I even started to write my own little plugins and macros in Vimscript.  
>
> **Web Applications:** Google's Angular2 and the Springboot framework are part of the high demand trendy Java world. We used it at the University to build a multi-player online strategy game, which I intend to share as a tutorial. But that will certainly take some time.  
>
> **C**: Dennis Ritchie the father of Unix also developed C, which was in fact my first programming language. It is very low level compaired to newer languages, like Java or Python, many of which actually are implemented in C. It is clearly part of the low supply world, which means, that even though the language is still very useful for certain tasks, there are not many programmers left, that are able to understand it.  
>
> **Linux Tools:** Bash and AWK are old, but still very powerful languages in the Unix/Linux command line world and even though the Linux kernel itself is written in C, many configuration scripts one may come across are written in Bash.  
> There is already a lot of very good advice about Bash programming available in thick books as well as in form of snippets scattered around specialized blogs and webpages. But it is still hard to get started with. That is why I decided to create a small framework inside a template script, whose code itself is checked by the shellcheck project. The template e.g. contains a few instructions, which make use of a concept used in Python to run the script from within a main() function, which is useful if the script is sourced or executed within another script in order to access its functions.  
> Furthermore, I provided an extensive example script, in which I cover nearly everything one needs to write stable and reliable scripts. I actually use it, to automate my communication with GitHub. It also lets me do changes on all my GitHub files automatically by providing pattern search and replace, and it uses AWK to parse the script and to automatically print help and documentation text into the shell.  
>
> | Links to repositories ('Ctrl-click' to open in new tab)         | Contents
> |:-------------------------------| :----------------------------------------| 
> [qool-helloworld-loop][101]      | My personal project descriptons
> [qool-helloworld-loop.wiki][102] (@) | More general topics
> [qool-angular2-loop][201]        | Client side code of strategy game
> [qool-angular2-loop.wiki][202]   | Comments and language specific resources
> [qool-awk-loop][301]             | Code snippets
> [qool-awk-loop.wiki][302]        | Comments and language specific resources
> [qool-bash-loop][401]            | Code snippets
> [qool-bash-loop.wiki][402]       | Comments and language specific resources
> [qool-c-loop][501]               | Code snippets
> [qool-c-loop.wiki][502]          | Comments and language specific resources
> [qool-cv-loop][601]              | My CV
> [qool-cv-loop.wiki][602]         | About me
> [qool-git-loop][701]             | Code snippets to automate tasks
> [qool-git-loop.wiki][702]        | Use cases and reference tables
> [qool-java-loop][801]            | Code snippets
> [qool-java-loop.wiki][802]       | Comments and language specific resources
> [qool-linux-loop][901]           | About Ubuntu installation
> [qool-linux-loop.wiki][902]      | About Ubuntu software center
> [qool-markdown-loop][1001]       | Folder with all my markdown files 
> [qool-markdown-loop.wiki][1002]  | Comments and language specific resources
> [qool-python-loop][1101]         | Code snippets
> [qool-python-loop.wiki][1102]    | Comments and language specific resources
> [qool-springboot-loop][1201]     | Server side code of strategy game
> [qool-springboot-loop.wiki][1202]| Comments and language specific resources
> [qool-tmux-loop][1301]           | IDE Startup shell script
> [qool-tmux-loop.wiki][1302]      | Comments
> [qool-vim loop][1401]            | My .vim folder and .vimrc file
> [qool-vim-loop.wiki][1402]       | Comments and language specific resources
> [qool-.vimrc-loop][1501]         | commented .vimrc file 
> [qool-.vimrc-loop.wiki][1502]    | how it works
>
> 🗄️
> </details>


### 💻 About me
> My name is Roland Benz, I live in Zurich, Switzerland and decided to dedicate my time and knowledge to some projects on GitHub. By clicking the button below you will get all the necessary information with respect to hiring and donations.
>
> <details>
> <summary> 📖 show content about me</summary>
>
> :dizzy:
>
> ##### Hiring and Collaboration
> There is a [personal repository][602] dedicated to hiring and collaboration. If you are located in Switzerland this is the place, where you can find some sort of CV and contact information.
>
> ##### Donations 
> The qoolixiloop repositories will constantly be filled with great content. This service to the general public comes as a huge effort from my side. In case you are a wealthy person or an executive of a big organization, not knowing, where to invest all the money that is pouring in, there is hope on the horizon. Below you will find my lonely and empty bank account, grateful and happy about any kind of attention. 
>
> :dizzy:
>
> <details>
> <summary> 📖 show details for a bank transfer </summary>
>
> :dizzy:
>
> Details for a bank transfer to my account   
> Informations pour un virement bancaire sur mon compte   
> Detalles para una transferencia bancaria a mi cuenta   
> Angaben für eine Überweisungen auf mein Konto   
>
> | :dizzy:                  | Details / Information / Detalles / Angaben  
> | :--------------------------- | :--------------------------------------- |   
> BIC (SWIFT-Code) of my bank | POFICHBEXXX   
> BIC (SWIFT-Code) de ma banque | POFICHBEXXX   
> BIC (SWIFT-Code) de mi banco | POFICHBEXXX 
> BIC (SWIFT-Code) meiner Bank |	POFICHBEXXX   
> :dizzy: | :dizzy: |
> Name/Adresse of my bank |  PostFinance AG, Mingerstrasse 20, 3030 Bern, Switzerland   
> Nom et adresse de ma banque | PostFinance AG, Mingerstrasse 20, 3030 Bern, Suisse   
> Nombre y dirección de mi banco | PostFinance AG, Mingerstrasse 20, 3030 Bern, Suiza  
> Name/Adresse meiner Bank |  PostFinance AG, Mingerstrasse 20, 3030 Bern, Schweiz   
> :dizzy: | :dizzy: |
> My account number (IBAN)   |  CH08 0900 0000 8007 4635 1   
> Mon numéro de compte |  CH08 0900 0000 8007 4635 1   
> Mi número de cuenta |  CH08 9000 0000 8007 4635 1   
> Meine Kontonummer (IBAN)   |  CH08 0900 0000 8007 4635 1   
> :dizzy: | :dizzy: |
> My name and address | Roland Benz, Felsber 2, 8052 Zurich, Switzerland   
> Mon nom et adresse  | Roland Benz, Felsber 2, 8052 Zurich, Suisse   
> Mi nombre y dirección | Roland Benz, Felsberg 2, 8052 Zurich, Suiza   
> Mein Name und Adresse  | Roland Benz, Felsberg 2, 8052 Zürich, Schweiz	 
>
> :dizzy:
> </details>
>
> </details>

<p align="center">
<a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=ZJSNJNBGL8MVE&source=url" target="_blank">
  <img src="https://www.paypalobjects.com/en_US/CH/i/btn/btn_donateCC_LG.gif"/>
</a>  
</p>

------------------------
qoolixiloop, 13. Nov. 2018  




[//]: # (links only needed for qool-vim-loop)

[1]: http://vim.wikia.com/wiki/Vim_Tips_Wiki
[2]: http://learnvimscriptthehardway.stevelosh.com/
[3]: http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html
[4]: https://stackoverflow.com
[5]: http://fprintf.net/vimCheatSheet.html
[50]: #-links


[//]: # (github.com links of 'Code: README.md' and 'Wiki: Home.md')

[101]: https://github.com/qoolixiloop/qool-helloworld-loop "qool-helloworld-loop"
[102]: https://github.com/qoolixiloop/qool-helloworld-loop/wiki "qool-helloworld-loop.wiki"
[201]: https://github.com/qoolixiloop/qool-angular2-loop "qool-angular2-loop"
[202]: https://github.com/qoolixiloop/qool-angular2-loop/wiki "qool-angular2-loop.wiki"
[301]: https://github.com/qoolixiloop/qool-awk-loop "qool-awk-loop"
[302]: https://github.com/qoolixiloop/qool-awk-loop/wiki "wikiqool-awk-loop.wiki"
[401]: https://github.com/qoolixiloop/qool-bash-loop "qool-bash-loop"
[402]: https://github.com/qoolixiloop/qool-bash-loop/wiki "wikiqool-bash-loop.wiki"
[501]: https://github.com/qoolixiloop/qool-c-loop "qool-c-loop"
[502]: https://github.com/qoolixiloop/qool-c-loop/wiki "qool-c-loop/wiki"
[601]: https://github.com/qoolixiloop/qool-cv-loop "qool-cv-loop"
[602]: https://github.com/qoolixiloop/qool-cv-loop/wiki "qool-cv-loop/wiki"
[701]: https://github.com/qoolixiloop/qool-git-loop "qool-git-loop"
[702]: https://github.com/qoolixiloop/qool-git-loop/wiki "qool-git-loop/wiki"
[801]: https://github.com/qoolixiloop/qool-java-loop "qool-java-loop"
[802]: https://github.com/qoolixiloop/qool-java-loop/wiki "qool-java-loop/wiki"
[901]: https://github.com/qoolixiloop/qool-linux-loop "qool-linux-loop"
[902]: https://github.com/qoolixiloop/qool-linux-loop/wiki "qool-linux-loop/wiki"
[1001]: https://github.com/qoolixiloop/qool-markdown-loop "qool-markdown-loop"
[1002]: https://github.com/qoolixiloop/qool-markdown-loop/wiki "qool-markdown-loop/wiki"
[1101]: https://github.com/qoolixiloop/qool-python-loop "qool-python-loop"
[1102]: https://github.com/qoolixiloop/qool-python-loop/wiki "qool-python-loop/wiki"
[1201]: https://github.com/qoolixiloop/qool-springboot-loop "qool-springboot-loop"
[1202]: https://github.com/qoolixiloop/qool-springboot-loop/wiki "qool-springboot-loop/wiki"
[1301]: https://github.com/qoolixiloop/qool-tmux-loop "qool-tmux-loop"
[1302]: https://github.com/qoolixiloop/qool-tmux-loop/wiki "qool-tmux-loop/wiki"
[1401]: https://github.com/qoolixiloop/qool-vim-loop "qool-vim-loop"
[1402]: https://github.com/qoolixiloop/qool-vim-loop/wiki "qool-vim-loop/wiki"
[1501]: https://github.com/qoolixiloop/qool-.vimrc-loop "qool-.vimrc-loop"
[1502]: https://github.com/qoolixiloop/qool-.vimrc-loop/wiki "qool-.vimrc-loop/wiki"


[//]: # (github.com links of all other 'Wiki: pages.md')

[303]: https://github.com/qoolixiloop/qool-awk-loop/wiki/awk-cheet-sheet
[304]: https://github.com/qoolixiloop/qool-awk-loop/wiki/bash-script-with-awk-to-learn-from-example
[403]: https://github.com/qoolixiloop/qool-bash-loop/wiki/bash-script-to-learn-from-example
[404]: https://github.com/qoolixiloop/qool-bash-loop/wiki/bash-script-template
[405]: https://github.com/qoolixiloop/qool-bash-loop/wiki/bash-scripting-cheetsheet
[406]: https://github.com/qoolixiloop/qool-bash-loop/wiki/bash-scripting-reference-cards
[703]: https://github.com/qoolixiloop/qool-git-loop/wiki/a-.gitignore-template
[704]: https://github.com/qoolixiloop/qool-git-loop/wiki/commands-and-graphical-representation
[903]: https://github.com/qoolixiloop/qool-linux-loop/wiki/sed-in-a-nutshell
[904]: https://github.com/qoolixiloop/qool-linux-loop/wiki/bash-script-with-sed-to-learn-from-example
[905]: https://github.com/qoolixiloop/qool-linux-loop/wiki/grep-in-a-nutshell
[906]: https://github.com/qoolixiloop/qool-linux-loop/wiki/bash-script-with-grep-to-learn-from-example
[907]: https://github.com/qoolixiloop/qool-linux-loop/wiki/cut-in-a-nutshell
[1003]: https://github.com/qoolixiloop/qool-markdown-loop/wiki/browser-navigation-with-grip-running
[1004]: https://github.com/qoolixiloop/qool-markdown-loop/wiki/add-paypal-button
[1005]: https://github.com/qoolixiloop/qool-markdown-loop/wiki/add-images
[1303]: https://github.com/qoolixiloop/qool-tmux-loop/wiki/pair-programming-with-tmate
[1304]: https://github.com/qoolixiloop/qool-tmux-loop/wiki/tmux-cheet-sheet
[1305]: https://github.com/qoolixiloop/qool-tmux-loop/wiki/tmux-start-up-script
[1503]: https://github.com/qoolixiloop/qool-.vimrc-loop/wiki/My-.vimrc-configruation-file-explained-in-detail


