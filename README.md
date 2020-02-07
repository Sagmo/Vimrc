# Vimrc

Contains my .vimrc-file, and everything i need to set up vim as I like it.
A complete list of all the plugins (Is not yet created), can be found under the 'Other', and then 'Plug-Ins', section

Here follows the step for usage and installation.

## Step 1 - Creating .vimrc
Create a fil in ~ and name it .vimrc. Copy-paste the content from this repository's .vimrc-file, into your own .vimrc-file

## Step 2 - Installation of Vim Plug and PlugIns

The installation process for vim pulg is automated in the .vimrc file (Unix).
After creating your .vimrc-file, run  ``` :PlugInstall ``` to install plugins. 

For more information about usage, see Documentation for Vim Plug : https://github.com/junegunn/vim-plug

## Step 3 - Special Cases
For Code-Completion, *You Complete Me*-package is beeing used. 
To install:

- Remember to build (with clangd, not libclang): 
- cd ~/.vim/Plugged/YouCompleteMe
- python3 install.py --clangd-completer

## Step 4 - Costimation and Expansion
Add Plugins and change themes as you see fit. This setup is designed to be used with Vim Plug, information about how to add pulgins and usage can be seen there. 

- Step 1 : Add ``` Plug 'github/link/to/pacage' ``` in Vim Plug section

- Step 2 : Reload .vimrc and run ``` :PlugInstall ``` to install pulgins


## Other


### Plug-Ins
- One
- Two
