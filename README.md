# Zeth's dotfiles

## Installation

This setup is inspired by this post: [https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/) and this: [https://news.ycombinator.com/item?id=11070797](https://news.ycombinator.com/item?id=11070797) (StreakyCobra's comment).

### This has already been done:

  - Ensuring that this line is in the `.zshrc`-file: `alias config='/usr/bin/git --git-dir=$ZUSERHOMEDIR/.zcfg/ --work-tree=$ZUSERHOMEDIR'` ... What it does it, that I can write 'config' (maybe from anywhere) and then it'll show my the files that I've changed from my monitored dotfile-setup.
  - Ensuring that the `.zcfg`-folder is in the `.gitignore`-file.

### This must be done:

  - Do a --bare-clone of this repo: `git clone --bare https://github.com/zethodderskov/dotfiles.git $HOME/.zcfg` (Remember to give the absolut path, if it's a root user doing this operation).
  - Checkout the files (to the home-dir):  `config checkout` (and rename/delete existing files blocking the checkout).
  - Do this: `config config --local status.showUntrackedFiles no`
  - Then change content of the `.zenv-variables`-file, so it matches the user.
  - Then install Zsh ( https://gist.github.com/derhuerst/12a1558a4b408b3b2b6e ).
  - Clone Zsh (http://ohmyz.sh/): `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
  - Install Powerlevel-theme: `git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k` (Remember to give the absolut path, if it's a root user doing this operation).
  - Change default shell:  `which zsh` and then `chsh -s /bin/zsh`
  - Then logout and login and check that it's Zshell being used with the correct theme.
  - Then clone Vundle: `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
  - Go to the `$HOME`-folder (`/root/` for root-user), and ensure that the `.vimrc`-file in there has this line: `source ~/.vim/vimrcfiles/.globalvimrc` (customized to the users home-dir).
  - Then open vim and write: `:PluginInstall`

... And that should be the basic setup. See below for an elaborated version.

## Troubleshooting (in-depth installation)

**VIM**
...On Ubuntu
  - First do this: `sudo apt-get install software-properties-common python-software-properties` [http://lifeonubuntu.com/ubuntu-missing-add-apt-repository-command/](http://lifeonubuntu.com/ubuntu-missing-add-apt-repository-command/).
  - Then do this: [http://tipsonubuntu.com/2016/09/13/vim-8-0-released-install-ubuntu-16-04/](http://tipsonubuntu.com/2016/09/13/vim-8-0-released-install-ubuntu-16-04/)

...On Mac... With Brew (obviously).

After the installation, then customize it with the `.vim`-folder from this repo. Get all the files and then it should as simple as running Vundle's `:PluginInstall` ... Vundle-doc: [https://github.com/VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim). Make sure that the Vundle-path in the `.globalvimrc`-file is correct.


**ZSH**
Get from here: [http://ohmyz.sh/](http://ohmyz.sh/).
Customize with `.zshrc` from this repo.

Then install this theme: [https://github.com/bhilburn/powerlevel9k](https://github.com/bhilburn/powerlevel9k)
 - The key to make the fonts work is to change the font in your Terminal to use the correct font (12pt Meslo Lg M Regular for Powerline). The fonts may be fount here: [https://github.com/powerline/fonts](https://github.com/powerline/fonts).


**Composer, Node and NPM**
Composer: [https://getcomposer.org/](https://getcomposer.org/)
Node (get the latest LTS-version): [https://nodejs.org/en/](https://nodejs.org/en/)
NPM: [https://www.npmjs.com/get-npm](https://www.npmjs.com/get-npm)



**PHP7**
Install using Brew.



**Python3**
Install using Brew.






## Mac-specific programs



**Install Brew**
[https://brew.sh/](https://brew.sh/).



**iTerm2**
Install and customize with files (from this repo in the folder .iterm2).
  - Set Solarized as colorscheme
  - Import the preferences



**Install Browsers**
  - Chrome
  - SW Iron (Here: [http://www.srware.net/en/software_srware_iron_download.php](http://www.srware.net/en/software_srware_iron_download.php) or [https://www.srware.net/forum/viewtopic.php?f=18&t=16099](https://www.srware.net/forum/viewtopic.php?f=18&t=16099) ). 
  - Firefox


**Browser extensions**
  - AdBlock: [https://chrome.google.com/webstore/detail/adblock/gighmmpiobklfepjocnamgkkbiglidom](https://chrome.google.com/webstore/detail/adblock/gighmmpiobklfepjocnamgkkbiglidom)
  - Appear.in: [https://chrome.google.com/webstore/detail/appearin/pokjppmpccggefgcenpngoleemajgnmo?hl=en](https://chrome.google.com/webstore/detail/appearin/pokjppmpccggefgcenpngoleemajgnmo?hl=en)
  - News Feed Eradicator for Facebook [https://chrome.google.com/webstore/detail/news-feed-eradicator-for/fjcldmjmjhkklehbacihaiopjklihlgg?hl=en](https://chrome.google.com/webstore/detail/news-feed-eradicator-for/fjcldmjmjhkklehbacihaiopjklihlgg?hl=en). 
  - Tag Assistant (by Google) [https://chrome.google.com/webstore/detail/tag-assistant-by-google/kejbdjndbnbjgmefkgdddjlbokphdefk?hl=en](https://chrome.google.com/webstore/detail/tag-assistant-by-google/kejbdjndbnbjgmefkgdddjlbokphdefk?hl=en).
  - TeamViewer [https://chrome.google.com/webstore/detail/teamviewer/oooiobdokpcfdlahlmcddobejikcmkfo?hl=en](https://chrome.google.com/webstore/detail/teamviewer/oooiobdokpcfdlahlmcddobejikcmkfo?hl=en).
  - Vimium [https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en)



**Textexpander**
[https://textexpander.com](https://textexpander.com).



**Droplr**
[https://droplr.com](https://droplr.com)



**Hey Focus**
[https://heyfocus.com/](https://heyfocus.com/)



**Frank DeLoupe**
Colorpicker for whenever it's needed: [http://jumpzero.com/frank/](http://jumpzero.com/frank/).



**Better Touch Tool**

For different small things (shortcuts + changed mouse speed): [https://www.boastr.net/](https://www.boastr.net/). Remember to increase the mouse sensitivity with this (and that it demands a logout to take effect. 

Shortcuts:

  - CTRL + CMD + 1   ->  Chrome  (Do it by setting a keyboard shortcut to 'Launch App' and finding it in applications). 
  - CTRL + CMD + 2   ->  SW Iron
  - CTRL + CMD + 3   ->  iTerm2
  - CTRL + CMD + 4   ->  Editor (Eg. PhpStorm / Atom).
  - CTRL + CMD + 5   ->  Finder
  - CTRL + CMD + 6   ->  Sequel Pro
  - CTRL + CMD + 7   ->  Firefox
  - CTRL + CMD + 8   ->  Sublime Text (or a notepad'ish thingy)
  - CTRL + CMD + 9   ->  Slack
  - CTRL + CMD + 0   ->  Spotify

  - CTRL + N  -> Down
  - CTRL + P  -> Up
 
  - Magic Mouse + multiple screens: Fn + 2-finger-slide-left  -> Go to left screen.

  - Trackpad + multiple screens: 2-finger-slide-from-left-edge  -> Go to left screen


**Other small things**
  - PhpStorm, Atom or Sublime Text
  - Spotify
  - Slack
  - Sequel Pro: [https://www.sequelpro.com/](https://www.sequelpro.com/).
  - Dropbox
  - LastPass
  - Maybe GluePrint (for design-work) - [http://glueprintapp.com/](http://glueprintapp.com/)









## Mac generel setup

**General**
  - Set default browser: SW Iron


**Desktop**
  - Set background picture


**Dock**
  - Set size on dock to 1/4 (small'ish), with a slight magnification.


**Mission Control**
  - Disable 'When switching to an application, switch to a Space with...'
  - Disable 'Group windows by application'
  - Enable 'Displays have separate Spaces'
  - Dashboard: 'As Spaces' (fixes a bug that I can't remember what is). 
  - Maybe set up a 'Hot corner' for a screensaver.


**Language & Region**
  - Prefered languages: English (U.S.)
  - Time format: 24 hour time.
  - Advanced: Set number-seperater


**Security & Privacy**
  - In the 'FileVault'-tab: enable harddisk encryption.


**Displays**
  - Disable 'Automatically adjust brightness'


**Energy Saver**
  - Set 'Turn display off after' according to your environment.


**Keyboard**
  - Key Repeat: Fast
  - Delay Until Repeat: Short
  - Press Fn key to 'Show F1, F2, etc. Keys'
  - Customize Control Strip and disable the fuck out of it. 
  - Modifier keys: Set CapsLock as ESC.
  - Input Sources: Set English (U.S.) - and setup Ukelele (see programs). Perhaps setup Norwegian/Danish for guests.


**Mouse**
  - Set secondary click.
  - Set a high sensitivity (and tune it even further with Better Touch Tool)
  - Disable all 'More Gestures'.


**Trackpad**
  - Enable 'Tap to click'
  - Set a high sensitivity (and tune it even further with Better Touch Tool)
  - Disable all 'More Gestures'.



