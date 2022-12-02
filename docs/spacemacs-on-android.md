# Spacemacs on Android

Spacemacs runs on an Android mobile devices using termux, a terminal emulator and Linux environment as just another Android app.

Spacemacs enables coding on the move or note taking in org-mode.  As Clojure has a relatively terse syntax, it is a little more feasible for writing code on a mobile device.

For a better experience, a portable keyboard such as the [Keyboard.io Atreus](https://shop.keyboard.io/pages/atreus) could also be used to provide a mechanical keyboard typing experience

![Keyboardio Atreus](https://cdn.shopify.com/s/files/1/0920/0728/files/20200131_161_480x480.jpg)


## Install Andronix and Ubuntu OS

Open the Android Play store, search for Andronix - Linux on Android app and select install

Popup showing that Andronix includes the Termux & F-droid store

Select the Linux distribution required

> Andronix includes Modded OS for a small cost $1.89, which are optomised and have tailored theme.

### Install Termux from F-Droid

First off, install termux from F-droid (uninstall termux installed via the Android play store first - although andronix will uninstall it for you it seems)

In the Andronix (burger) menu, select **Settings**

Scroll through the options to the Termux setup at the bottom
Select Run Termux Setup

In Termux Setup page, select Termux & F-Droid > Download > click the arrow to download

Select **Allow Installation** - press the lightning icon

Install unknown apps > Allow from this source

Back to the Termux Setup page > Install - clkci on the cloud icon

Termux install popup - confirm install

Select keyboard layout to use - English UK - 30
Layout maching the keyboard for this machine >  1

Select geographical area for timezone > Europe > 8
City or region > London > 27

> At a [more] prompt, press Enter to see more options

VNC server
- enter password: trustnoone

- vncserver-start - autodetect/dynamic resolution

packages all downloaded and installed, left with terminal prompt

Back to Andronix
- back to GUI selection
- select Window Manager > i3

Switch to termux, press and hold in terminal to paste command

Command fails as curl not installed

apt install curl

Up arrow x2 to try the i3 install again

### Install XSDL server

Open Play store, search for XSDL

Install XServer XSDL



### Ubuntu

Select the Ubuntu logo

Select the latest version 20.04

Select install

> Unless using a terminal UI, then select a desktop environment for a full graphic environment or a window manager - preferable if just using Emacs in Gui mode

Select Desktop environment
- select desktop: LXDE

A command is copied to the clip-board

Open termux and paste

Select prompt to bring up virtual keyboard and press Enter

Some packages may prompt to see if the config should use the existing config or the config from the package being installed.



Select Window manager
- select window manager: i3

Had to run the i3 script a second time as it didnt seem to install.




## Good to know
- git works (also magit)
- The Android app Orgzly can be used to edit org mode files and sync them with termux, webdav or dropbox

## Alternatives
- Replete (not a complete IDE).
- Nightlight (also via termux-ubuntu, easier to setup, can be used in Android browser so more adapted to the mobile phone experience, But: less functionality, your Clojure program must not crash, otherwise REPL freezes)

## Constraints
- termux re-uses the Android libc which seems to be incompatible with java, as incredible as this sounds. I had to install termux-ubuntu in order to have java, the openjdk and finally Clojure.
- Installing an Xserver/Desktop environment in termux is possible, but it's really awkward to use. I do not recommend it. Hence we are left with the terminal version of emacs. Impact on spacemacs: no fringe, syntax highlighting only underlines the code (no waves or different colors for underlining possible). As a workaround I activated different background colours for errors and warnings (attention: the set of colours is also limited, there is an emac command that displays alla available colors).
- Currently, I haven't solved a problem in termux-ubuntu which prevents me from using the el package manager. Workaround: install emacs in both termux and termux-ubuntu, run all emacs package installations in termux (it works there), then copy emacs.d and .spacemacs to the termux-ubuntu sub-folders (I know that's ugly).
- None of the standard Android on screen keyboards (OSK) feature special keys like ALT, CTRL, TAB etc. Workaround: 1) install Hacker's Keyboard 2) Configure Extra Key rows in termux https://wiki.termux.com/wiki/Hardware_Keyboard . I use a combination of the two. I switch between Hacker's Keyboard and my Samsung OSK via a little icon in the bottom row of the screen (that's configurable on Samsung phones).The main ingredients are:
- termux (terminal emulator for Android and some Chromebooks).
- termux-ubuntu (a chroot providing an Ubuntu Terminal environment, do not confuse with ubuntu-in-termux which is less stable)
- optionally termux-widget (costs 3 pounds or so, allows to put a shortcut to a shell script on the Android homescreen. I use it to launch termux-ubuntu, it could be tweaked to launch spacemacs.).
- Hacker's Keyboard

## F-Droid Installation

Navigate to f-droid website (link on Termux website)

Click blue f-droid button to download

Once downloaded, ope the apx file

- browser message
"For Security your pohone is not allowed to install unknown apps from this source"

Select Settings > allow install from browser source

Select install

Termux installs

Open termux - it automatically updates packages

termux shows list of packages


## Termux install from F-Droid

Open F-droid

Search packages for termux

Select the termux package and press the install button, or open button if already installed (which it probably will be).



### Optional extras

[Termux:Styling](https://f-droid.org/en/packages/com.termux.styling/) - colour schemes and poperline-ready fonts

[Termux:Widget](https://f-droid.org/en/packages/com.termux.widget/) - Launch Termux commands from the homescreen


Original author Termux install approach:
Install Termux from the Play Store (app will not get termux updates using this approach).

Termux has it's own package manager pkg, but if you type apt iso. pkg, that will also work.

It comes with many packages.

After the apt update / apt upgrade, I recommend to install fish or tweak bash in order to have some sort of autocompletion.
Termux can read and write the external SD card (you need to run termux-setup-storage), but git can't write to the SD card. So I don't recommend creating any projects on the SD card.Install a text editor (nano or vi with apt, or micro via curl cf. their website).
Configure the termux extra key rows https://wiki.termux.com/wiki/Touch_KeyboardInstall termux-ubuntuAs I said above, java can't be installed directly in termux. To be completely honest, there is one package which installs java, but it's terribly slow. It's better to install the termux-ubuntu chroot, which is here:
https://github.com/Neo-Oli/termux-ubuntu

This creates a folder subsystem, and a startup script. The result is a terminal version of ubuntu. The available packages depend on your architecture. I was disappointed to learn that I have a 32 bit architecture, although the processor is 64 bit.

Install Clojure in termux-ubuntuStart your termux-ubuntu session (you might want to create a shortcut for that later via termux-widget).

Dependencies:
apt update
apt-get install openjdk-8-jdk curl rlwrap

Clojure:
curl -O https://download.clojure.org/install/linux-install-1.10.1.469.sh
chmod +x linux-install-1.10.1.469.sh
./linux-install-1.10.1.469.sh

Leiningen:
curl -O https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
mv lein ~/../bin/lein
chmod +x ~/../bin/lein
bash ~/../bin/lein

install spacemacs

Note: In termux-ubuntu the installation of packages doesn't work, error Bad address and other errors.Workaround:
- install emacs in both termux and termux-ubuntu
- copy the folder .emacs.d from  termux to termux-ubuntu
- recompile packages

Install spacemacs in termux:
apt install emacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

I recommend to git check out the dev version, so you can use clj-kondo

Install emacs in termux-ubuntu
Do not install the ubuntu emacs package, rather:
add-apt-repository ppa:kelleyk/emacs
apt update
apt install emacs26-nox (the terminal version of emacs)

Again, I recommend to check out the dev version, so you can use clj-kondo.

Copy the folder .emacs.d from  termux to termux-ubuntu (adapt to your folder structure) :

cp .emacs.d jails/ubuntu/ubuntu-fs/root/
cp .spacemacs jails/ubuntu/ubuntu-fs/root/.spacemacs
