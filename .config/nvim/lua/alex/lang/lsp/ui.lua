--------------
-- LSP Saga --
--------------

local saga = require 'lspsaga'

-- Configs.
saga.init_lsp_saga {
    code_action_lightbulb = {
        enable = false
    },
    border_style = 'single',
    definition_action_keys = {
        edit = '<C-e>',
        vsplit = '<C-v>',
        split = '<C-h>',
        quit = 'q',
    },
}

-- Get the color palette.
local palette = require 'alex.utils'.get_gruvbox_material_palette()
local border_color = palette.orange[1]

-- Set the borders colors.
vim.cmd('highlight! DefinitionBorder guibg=NONE guifg=' .. border_color)
vim.cmd('highlight! LspSagaLspFinderBorder guibg=NONE guifg=' .. border_color)
vim.cmd('highlight! LspSagaRenameBorder guibg=NONE guifg=' .. border_color)
vim.cmd('highlight! LspSagaDiagnosticBorder guibg=NONE guifg=' .. border_color)
vim.cmd('highlight! LspSagaHoverBorder guibg=NONE guifg=' .. border_color)
vim.cmd('highlight! LspSagaCodeActionBorder guibg=NONE guifg=' .. border_color)
vim.cmd('highlight! FinderSpinnerBorder guibg=NONE guifg=' .. border_color)