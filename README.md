# Vimrc

Contains my .vimrc-file, and everything i need to set up vim as I like it.
A complete list of all the plugins (Is not yet created), can be found under the 'Other', and then 'Plug-Ins', section

Here follows the step for usage and installation.

# Prerequisites
Vim is installed. You can find installation for Vim here (needs git): https://www.vim.org/git.php
If you have an older version of Vim (< 7.4.1578), It's neccessary to update your Vim to make it work with *You Complete Me*. See *Update Vim*.


### Update Vim
This is perhaps a brute way to do it.. Who knows.
Follow Step 1 & 2 if Vim is not installed from source.

#### Step 1 - Uninstall vim

##### Debian systems
``` sudo apt purge vim ```

##### Red-Hat systems
``` sudo yum remove vim ```

#### Step 2 - Install The Latest Version / Building from Source
Follow instructions at https://www.vim.org/git.php. Here you will also find information about keeping vim up to date.



#### Alt 2 - Already have built from source (Not installed with command : sudo apt install vim)
If you already have built from source, you should go into location where you have cloned the Vim-repository.

```
cd Vim/src
make distclean  # if you build Vim before
make
sudo make install
```

# Installation of Vimrc

### Step 1 - Creating .vimrc
#### Alt 1
Clone this repository and copy the ``` .vimrc ``` into the ``` ~ ``` directory.

``` cp .vimrc ~ ```


#### Alt 2
Create a file in ~ and name it ``` .vimrc ```. Copy-paste the content from this repository's .vimrc-file, into your own .vimrc-file

### Step 2 - Installation of Vim Plug and PlugIns



#### Alt 1 - Automated Installation
The installation process for vim pulg is automated in the .vimrc file (Unix). Just open your .vimrc (or just any file in vim) and the installation should begin. Grab a cup of coffee.

#### Alt 2 - Automated Installation doesent work
After creating your .vimrc-file, run  ``` :PlugInstall ``` to install plugins. 

#### Other Problems
For more information about installation and usage, see Documentation for Vim Plug : https://github.com/junegunn/vim-plug


### Step 3 - Special Cases
For Code-Completion, *You Complete Me*-package is beeing used. You need python 2.7 or 3.6.

#### Alt 1 - It gets installed automatically
What more to add..

#### Alt 2 - Manually

To install:

- Remember to build (with clangd, not libclang): 
- cd ~/.vim/Plugged/YouCompleteMe
- python3 install.py --clangd-completer

*NOTE* If you get error saying you are missing python3 header, try installing with just python install.py --clangd-completer

#### Alt 3 - You have an older version of Vim 
If you get a warning that says YouCompleteMe unavailable: requires Vim 7.4.1578+.

### Step 4 - Costimation and Expansion
Add Plugins and change themes as you see fit. This setup is designed to be used with Vim Plug, information about how to add pulgins and usage can be seen there. 

- Step 1 : Add ``` Plug 'github/link/to/pacage' ``` in Vim Plug section

- Step 2 : Reload .vimrc and run ``` :PlugInstall ``` to install pulgins


# Other


### Plug-Ins
- One
- Two
