# -*- mode: zsh; sh-indentation: 2; indent-tabs-mode: nil; sh-basic-offset: 2; -*-
#
# Copyright (c) 2019 Sebastian Gniazdowski
#
# Standardized $0 Handling
# https://z.digitalclouds.dev/community/zsh_plugin_standard#zero-handling

0="${ZERO:-${${0:#$ZSH_ARGZERO}:-${(%):-%N}}}"
0="${${(M)0:#/*}:-$PWD/$0}"

if [[ ${zsh_loaded_plugins[-1]} != */zsh-util-lib && -z ${fpath[(r)${0:h}]} ]]
then
    fpath+=( "${0:h}" )
fi

typeset -g ZSH_UTIL_LIB_DIR=${0:h}
autoload @util-bind-all

# vim: ft=zsh sw=2 ts=2 et
