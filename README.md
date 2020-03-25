## Configurações do meu Ambiente de Desenvolvimento

### Instalar ZSH
```
https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
```

### Instalar Oh-My-Zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Instalar a fonte FiraCode
```
https://github.com/tonsky/FiraCode/releases
```

### Instalar Spaceship
```
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
```
```
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

### Instalar ZInit
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"'
```

### Finalizando Terminal
Após terminar todas instalações substituir as configs dos arquivos ```.hyper.js``` e ```.zshrc```.

### Instalar e configurar VScode
#### Extensões:
- Color Highlight
- DotENV
- Dracula Official
- EditorConfig for VS Code
- ESLint
- GitLens - Git supercherged
- GraphQL (Prisma)
- Live Server
- Live Share
- Material Icon Theme
- Pomodoro Timer
- vscode-styled-components

Após instalar as extensões, copiar o ```vscSettings.json```.