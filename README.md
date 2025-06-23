## Useage

``` shell
cd ~/.config
git init                        
git remote add origin git@github.com:shuroki/dotfiles.git 
git fetch origin macos         
git checkout -b macos origin/macos

# delete private file
rm .env .alias .zshrc .zimrc 
```

## Installation

``` shell
brew install neofetch
brew install starship
brew install --cask wezterm
```