<div align="center">

## Clipboard Image 📋🖼️

![](https://img.shields.io/badge/Linux-FCC624?style=flat-square&logo=linux&logoColor=black)
![](https://img.shields.io/badge/Windows-0078D6?style=flat-square&logo=windows&logoColor=white)
![](https://img.shields.io/badge/WSL-55a9dd?style=flat-square&logo=windows-terminal&logoColor=black)
![](https://img.shields.io/badge/MacOS-000000?style=flat-square&logo=apple&logoColor=white)
</br><a href="/LICENSE.md"> ![License](https://img.shields.io/badge/License-MIT-brightgreen?style=flat-square) </a>

[Installation](#install)
•
[Usage & Demo](#usage)
•
[Config](#config)
</div>

---

### Install
> ❗ Requirement: **`xclip`** (X11), **`wl-clipboard`** (Wayland), **`pngpaste`** (MacOS)
> 
> ℹ️ Run `:checkhealth clipboard-image` to check a missing dependency

|Plugin manager|Script|
|---|---|
|[vim-plug](https://github.com/junegunn/vim-plug)|`Plug 'ekickx/clipboard-image.nvim'`|
|[packer.nvim](https://github.com/wbthomason/packer.nvim)|`use 'ekickx/clipboard-image.nvim'`|

### Usage
This is the basic usage. If you want to see more you can read [API](/API.md)

Copy image, then type `PasteImg` in command mode.

### Config
This plugin is **zero config**, means you don't need to configure anything to works. The image will be saved at `.asessts/${markdownFileName}/`

## Tips
Share your tips [here](https://github.com/ekickx/clipboard-image.nvim/discussions/15)

## Questions
You can ask your questions on [discussions](https://github.com/ekickx/clipboard-image.nvim/discussions)

## Contribute
Read the contribution guide [here](/CONTRIBUTING.md)

## Credits
Thanks to:
- [ferrine/md-img-paste.vim](https://github.com/ferrine/md-img-paste.vim), I look some of its code 
- [elianiva](https://github.com/elianiva) for giving me feedback on Vim Indonesia (Telegram group)
- all neovim lua plugin creators and its contributors, I get some inspiration from reading their code
