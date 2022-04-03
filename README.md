# vim-foam

2022-04-03 **Project status**: I no longer expect to work with OpenFOAM. As such, I have no
intention to keep this project alive. It is archived and anyone is free to fork
if they are interested.

This is a filetype plugin for OpenFOAM. It is currently pre-alpha, and the
development will be sporadic. The initial goal is to get up to par with
[vimExtensionOpenFOAM](https://bitbucket.org/shor-ty/vimextensionopenfoam.git).

## Table of contents

  * [Installation](#installation)
  * [Features](#features)
  * [TODO](#todo)
  * [Acknowledgements](#acknowledgements)

## Installation

If you use [vim-plug](https://github.com/junegunn/vim-plug), then add the
following line to your `vimrc` file:

```vim
Plug 'lervag/vim-foam'
```

Or use some other plugin manager:
- [vundle](https://github.com/gmarik/vundle)
- [neobundle](https://github.com/Shougo/neobundle.vim)
- [pathogen](https://github.com/tpope/vim-pathogen)

## Features

These are the current features of this plugin:

- Syntax highlighting
- Completion (`:h omni-complete`)

## TODO

- [ ] Fix completion e.g. in `fvSchemes` entries

## Acknowledgements

The syntax part of this plugin is inspired by `vimExtensionOpenFOAM` which was
written by _Ferdinand Leinbach_ and _Tobias Holzmann_.

