local opts = { noremap = true, silent = true }

vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
vim.keymap.set('n', '""', ':registers "0123456789abcdefghijklmnopqrstuvwxyz*+.<cr>', opts)
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], opts)
vim.cmd [[ nnoremap <C-w>c <C-w>c<C-w>p ]]

vim.keymap.set('n', '<C-Up>', ':%bd|e#|bd#|NvimTreeOpen<cr>', opts)
vim.keymap.set('n', '<C-Left>', ':BufferLineCyclePrev<cr>', opts)
vim.keymap.set('n', '<C-Right>', ':BufferLineCycleNext<cr>', opts)
vim.keymap.set('n', '<M-Left>', ':tabprevious<cr>', opts)
vim.keymap.set('n', '<M-Right>', ':tabnext<cr>', opts)

vim.keymap.set('n', '<leader>w', ':w!<cr>', opts)
vim.keymap.set('n', '<leader><cr>', ':nohlsearch<cr>', opts)
vim.keymap.set('n', '<leader>x', ':bp|bd#<cr>', opts)
vim.keymap.set('n', '<leader>f', function() require 'telescope.builtin'.live_grep {} end, opts)
vim.keymap.set('n', '<leader>p', function() require 'telescope.builtin'.find_files {} end, opts)
vim.keymap.set('n', '<leader>b', ':NvimTreeToggle<cr>', opts)
vim.keymap.set('n', '<leader>l', ':NvimTreeFindFile<cr>', opts)
vim.keymap.set('n', '<leader>c', '<Plug>NERDCommenterToggle', opts)
vim.keymap.set('v', '<leader>c', '<Plug>NERDCommenterToggle<cr>gv', opts)

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, opts)
vim.keymap.set('n', 'gc', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', 'gq', vim.lsp.buf.code_action, opts)
vim.keymap.set('n', 'gn', vim.lsp.buf.rename, opts)
vim.keymap.set('n', 'gf', ':TroubleToggle lsp_references<cr>', opts)

vim.keymap.set('n', '<space>g', ':Neogit<cr>', opts)
vim.keymap.set('n', '<space>s', ':Gitsigns setqflist<cr>', opts)
vim.keymap.set('n', '<space>o', ':SymbolsOutline<cr>', opts)
vim.keymap.set('n', '<space>a', ':TroubleToggle document_diagnostics<cr>', opts)
vim.keymap.set('n', '<space>m', '<Cmd>exe v:count1 . "ToggleTerm"<cr>', opts)

vim.keymap.set('n', 'n', [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]], opts)
vim.keymap.set('n', 'N', [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]], opts)
vim.keymap.set('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], opts)
vim.keymap.set('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], opts)
vim.keymap.set('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], opts)
vim.keymap.set('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], opts)
