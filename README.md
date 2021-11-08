# `ZSH-UTIL-LIB`

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Introduction](#introduction)
  - [List Of The Functions](#list-of-the-functions)
    - [@util-bind-all](#util-bind-all)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Introduction

An utility-library for Zshell that provides a few general-purpose functions.
It's a counterpart to the
[zsh-string-lib](https://github.com/z-shell/zsh-string-lib) library.

## List Of The Functions

### @util-bind-all

Rebinds all key bindings so that they're executing some custom code. It's an
alternative to overloading of all Zle widgets.

Arguments:

1. The custom snippet of code to run before executing the original widget.
2. A bool (`1`,`yes`,`true`,`on` for truth or other value for false) indicating
   whether the widget calls should be automatically forwarded to their original
   (before-binding) versions.
3. (Optional) Custom snippet of code to be executed **after** executing the
   original widget.
4. (Optional) A method of the binding – either `bindkey` (the default) or
   `zle-N`. The first one is fully bindkey based, i.e.: e.g.: it doesn't create
   the backup widgets that are typically prefixed with "orig–". The second is
   half-bindkey / half-zle -N based - it does create the backup widgets, however
   the widgets are obtained using `bindkey` listing invocation, which means that
   typically only a half of all widgets are bound.

Example:

```zsh
@util-bind-all 'print hello!' yes 'print hello after!'
```

<!-- vim:set ft=markdown tw=80 fo+=an1 autoindent: -->
