return {
  { -- Tabnine
    'codota/tabnine-nvim',
    build = './dl_binaries.sh',
    config = function()
      require('tabnine').setup {
        disable_auto_comment = true,
        -- accept_keymap = "<Tab>",
        -- dismiss_keymap = "<S-Tab>",
        -- accept_keymap = '<Right>',
        accept_keymap = '<C-y>',
        dismiss_keymap = '<C-]>',
        debounce_ms = 800,
        suggestion_color = { gui = '#808080', cterm = 244 },
        exclude_filetypes = { 'TelescopePrompt' },
      }
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
