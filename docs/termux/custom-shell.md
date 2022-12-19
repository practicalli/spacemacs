# Customise shell

Customising the shell is optional, although gives an enhanced experience.

Zsh provides the richest command line experience, providing many advanced features over bash.  Oh My Zsh is a community configuration that provides a simple way to configure Zsh features and also supports [powerline10k terminal theme](https://github.com/romkatv/powerlevel10k){target=_blank}, providing context specific information and a more engaging visual experience.

> [Oh My Zsh](https://ohmyz.sh/){target=_blank} community configuration enhances the Zsh experience.  Practicalli normally uses [Prezto community configuration](https://github.com/sorin-ionescu/prezto){target=_blank}, unfortunately this did not work well on Termux.


## Install Zsh

Install the zsh package using the Termux package manager

```
pkg install zsh
```

Start zsh, which will show a `%` character as the prompt

```
zsh
```

Set the shell to run zsh by default

```
chsh -s zsh
```


## Install Oh My Zsh

[Install Oh My Zsh via curl](https://ohmyz.sh/#install){target=_blank} (or wget if preferred) in the `.oh-my-zsh/` directory


```shell
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```


## Install Powerline10k

Powerline10k is a visually appealing prompt with a setup script to visually choose the presentation of the prompt.

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Next time zsh is run, powerline10k setup script will run.  If Meslo is not set as the terminal font, the setup script offers to install the font.  Installing the font will restart Termux.

`p10k configure` to manually run the powerline10k setup script.


<!--
## Install Prezto community configuration

Clone prezto and its sub-modules into `XDG_CONFIG_HOME/zsh` which is typically `~/.config/zsh`

```
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-${XDG_CONFIG_HOME:-$HOME/.config}/zsh}/.zprezto"
```


Set the location of the Zsh configuration home with `$ZDOTDIR`, relative to the XDG locations

```
export ZDOTDIR="${ZDOTDIR:=$XDG_CONFIG_HOME/zsh}"
```


Create a new Zsh configuration by copying/linking the Zsh configuration files provided:

```
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

!!! Hint "Practicalli Zsh configuration"
    Clone [practicalli/dotfiles](https://github.com/practicalli/dotfiles) and replace the symbolic links in `$XDG_CONFIG_HOME/zsh` with links to the respective Zsh configuration files in the cloned repository (or copy the files if you prefer)

    Copy or create a symbolic like for the `.p10k configuration or skip this to create your own configuration when next starting `zsh`.`


Edit `$XDG_CONFIG_HOME/.config/zsh/.zshenv` and add the following lines to enable zsh to find the prezto configuration

```shell
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:=$HOME/.config}"
export ZDOTDIR="${ZDOTDIR:=$XDG_CONFIG_HOME/zsh}"
```

Create a symbolic link from `$HOME/.zshenv` to `$XDG_CONFIG_HOME/.config/zsh/.zshenv` (or to the .zshenv file from [practicalli/dotfiles](https://github.com/practicalli/dotfiles))

```shell
ln -s $XDG_CONFIG_HOME/.config/zsh/.zshenv $HOME/.zshenv
```

Check the configuration is working by loading the .zshenv configuration

```shell
source "$ZDOTDIR/.zshenv"
```
 -->

!!! INFO "Using Oh My Bash"
    If preferring Bash, then [ohmybash](https://ohmybash.nntoan.com/){target=_blank} provides a nice command line experience, showing completions clearer, nice themes that provide information.
