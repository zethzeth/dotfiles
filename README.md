# Zeth's dotfiles
This setup is inspired by this post: [https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/) and this: [https://news.ycombinator.com/item?id=11070797](https://news.ycombinator.com/item?id=11070797) (StreakyCobra's comment). 

## Programs



**VIM**
...On Ubuntu
  - First do this: `sudo apt-get install software-properties-common python-software-properties` [http://lifeonubuntu.com/ubuntu-missing-add-apt-repository-command/](http://lifeonubuntu.com/ubuntu-missing-add-apt-repository-command/). 
  - Then do this: [http://tipsonubuntu.com/2016/09/13/vim-8-0-released-install-ubuntu-16-04/](http://tipsonubuntu.com/2016/09/13/vim-8-0-released-install-ubuntu-16-04/)

...On Mac... With Brew (obviously).

After the installation, then customize it with the `.vim`-folder from this repo. Get all the files and then it should as simple as running Vundle's `:PluginInstall` ... Vundle-doc: [https://github.com/VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim). Make sure that the Vundle-path in the `.globalvimrc`-file is correct.



**ZSH**
Get from here: [http://ohmyz.sh/](http://ohmyz.sh/). 
Customize with `.zshrc` from this repo.

Change shell with:
`which zsh`
`chsh -s /bin/zsh`

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



