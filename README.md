<br />
<p align="center">
  <img alt="Dotfiles" src="https://raw.githubusercontent.com/Carbone13/dotfiles/master/.assets/cover.png"/>
 </p>
<p align="center">
 My personnal dotfiles for Apple Silicon
</p>
<p align="center">
  <img alt="GitHub Repo Stars" src="https://img.shields.io/github/stars/Carbone13/dotfiles?color=cc6165&labelColor=23262e&style=for-the-badge">
</p>

#


Based on [One Dark Pro](https://github.com/Binaryify/OneDark-Pro) (darker variation).

Mostly inspired/stolen from [this rice](https://www.reddit.com/r/unixporn/comments/stuft5/openbox_one_dark/).

## Details

* <b>Terminal</b>: [iTerm2](https://iterm2.com/) + zsh
* <b>WM</b>: [yabai](https://github.com/koekeishiya/yabai) + [skhd](https://github.com/koekeishiya/skhd)
* <b>Bar</b>: [simple bar](https://github.com/Jean-Tinland/simple-bar) + [übersicht](https://tracesof.net/uebersicht/)
* <b>PDF reader</b>: [zathura](https://github.com/zegervdv/homebrew-zathura) (note: waiting for [#70](https://github.com/zegervdv/homebrew-zathura/issues/70) for better top bar)
* <b>Browser</b>: [Thorium](https://thorium.rocks/)
* <b>Font</b>: [JetBrains Mono](https://www.jetbrains.com/fr-fr/lp/mono/)
* <b>Neovim</b>: [NvChad](https://nvchad.com/) + custom theme
* <b>Main Editor</b>: [VS Code](https://code.visualstudio.com/)

## Screenshots
![Desktop Screenshot](https://preview.redd.it/yabai-one-dark-osx-v0-nez1eab729ic1.png?width=1080&crop=smart&auto=webp&s=589e1f60e66f8b20bb1e4032cf79a6d72bb4fa29)

![Spotify Screenshot](https://raw.githubusercontent.com/Carbone13/dotfiles/master/.assets/nvim-spotify.png)
  
## Usage

> [!CAUTION]
> Don't run it before reading ! It's going to erase most of your homebrew packages !

> [!WARNING]
> The repository should be cloned in the `$HOME` directory, as scripts expects the root to be located in `$HOME/dotfiles`.

### Pre-requisite
I generally just install git on the system, by typing `git` in the terminal, which ask for the command line dev tools installation that I need anyways.

Then :
```sh
git clone https://github.com/Carbone13/dotfiles
cd dotfiles
./install
```
[install.sh](scripts/install.sh) bootstraps a few scripts :

- [prelude.sh](scripts/prelude.sh) Install Homebrew
- [system.sh](scripts/system.sh) Set my macbook preferences
- [brewer.sh](scripts/brewer.sh) Install all my packages and casks with Homebrew Bundle (see packages.brew). Note that it actually syncs the system packages with the file, removing packages if necessary !
- [dotfiles.sh](scripts/dotfiles.sh) Performs the linking of my .config folder and various configuration files (e.g `.zshrc` etc..)
- [aftermath.sh](scripts/aftermath.sh) Performs some post-install setup of things like opam, yabai etc...

I also have a [os-update.sh](os-update.sh) script that only runs [brewer.sh](scripts/brewer.sh) and [dotfiles.sh](scripts/dotfiles.sh), the others being only useful when installing a fresh system.

## TODO
_Well, I might never implement those, because it would be more painful that just doing it manually post-install._

- Automatically setup Ubersicht
- 'Tap to click' preferences seems to not be working
- VS Code is handled with online sync for the moment
- iTerm2 is weird
- Automate xcode command line install
