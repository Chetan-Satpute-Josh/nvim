# Neovim config

## Setup
- Clone the repository and copy its content to config folder
```sh
git clone git@github.com:chetan-satpute-josh/nvim.git
cp -r nvim ~/.config
```

- Install additional formatters

_neovim command_
```
:MasonInstall lua-language-server stylua
:MasonInstall typescript-language-server prettier eslint-lsp json-lsp css-lsp
:MasonInstall ruby-lsp
:MasonInstall gopls
```

## Keymaps
| Keys        | Function                        |
| ----------- | ------------------------------- |
| `<C-p>`     | find files by name              |
| `<space>e`  | open file explorer              |
| `<space>lg` | search text across project      |
| `<space>fm` | format file                     |
| `<space>/`  | comment line / block            |
| `<C-p>`     | move up in autocomplete popup   |
| `<C-n>`     | move down in autocomplete popup |
