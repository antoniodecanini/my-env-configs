## My Dev Environment
First of all install git

### Install ZSH
[https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)


### Install Oh-My-Zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Install FiraCode font
```
sudo apt install fonts-firacode
```

### Install Spaceship
```
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

### Install ZInit
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
```

### Install Hyper
[hyper.is](hyper.is)

Open Hyper Terminal and run this command to install Dracula Theme
```
hyper install hyper-dracula
```

### Finishing Terminal
After everything installed, replace the files ```.hyper.js``` e ```.zshrc``` in your home.

### VSCode cfg
#### Extensions:
- Color Highlight
- DotENV
- Dracula Official
- EditorConfig for VS Code
- ESLint
- Prettier - Coder formatter
- GitLens - Git supercherged
- GraphQL (Prisma)
- Live Server
- Live Share
- Live Share Audio
- Material Icon Theme
- vscode-styled-components

After everything installed, replace the vsCode settings with ```vscSettings.json``` settings.
