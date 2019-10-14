# ============================================================================
# FILE: icons.py
# AUTHOR: Kristijan Husak <husakkristijan at gmail.com>
# License: MIT license
# ============================================================================

import re
import typing
from pathlib import Path
from defx.base.column import Base
from defx.context import Context
from neovim import Nvim


class Column(Base):
    def __init__(self, vim: Nvim) -> None:
        super().__init__(vim)
        self.vim = vim
        self.name = 'guide'
        self.opts = self.vim.call('defx_guide#get')

    def get(self, context: Context, candidate: dict) -> str:
        if candidate['is_directory']:
            return ''

        return self.opts['icon']

    def length(self, context: Context) -> int:
        return 1

