return {
  'epwalsh/obsidian.nvim',
  version = '*',
  lazy = false,
  ft = 'markdown',

  dependencies = {
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
  },

  opts = {

    workspaces = {
      {
        name = 'Brain',
        path = '~/Library/Mobile Documents/iCloud~md~obsidian/Documents/new_brain',
      },
    },

    completion = {
      nvim_cmp = true,
      min_chars = 4,
    },

    mappings = {

      ['<leader>og'] = {
        action = function()
          return require('obsidian').util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true, desc = 'Go to Note' },
      },

      ['<leader>oc'] = {
        action = function()
          return require('obsidian').util.toggle_checkbox()
        end,
        opts = { buffer = true, desc = 'Toggle Checkbox' },
      },

      ['<leader>o#'] = { action = ':ObsidianTags<CR>' },
      ['<leader>on'] = { action = ':ObsidianNew<CR>' },
      ['<leader>ol'] = { action = ':ObsidianLinks<CR>' },
      ['<leader>ob'] = { action = ':ObsidianBacklinks<CR>' },
      ['<leader>oo'] = { action = ':ObsidianFollowLink<CR>' },
      ['<leader>or'] = { action = ':ObsidianSearch<CR>' },
      ['<leader>os'] = { action = ':ObsidianQuickSwitch<CR>' },
      ['<leader>ou'] = { action = ':ObsidianOpen<CR>' },
      ['<leader>ot'] = { action = ':ObsidianToday<CR>' },
      ['<leader>oT'] = { action = ':ObsidianTomorrow<CR>' },
      ['<leader>oy'] = { action = ':ObsidianYesterday<CR>' },
    },

    daily_notes = {
      folder = 'Calendar',
      date_format = '%Y-%m-%d',
      alias_format = '%B %-d, %Y',
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      template = nil,
    },

    note_id_func = function(title)
      local suffix = ''
      if title ~= nil then
        -- If title is given, transform it into valid file name.
        suffix = title:gsub(' ', '-'):gsub('[^A-Za-z0-9-]', ''):lower()
      else
        -- If title is nil, just add 4 random uppercase letters to the suffix.
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      -- return tostring(os.time()) .. "-" .. suffix
      return suffix
    end,
    templates = {
      subdir = 'System/Templates',
      date_format = '%Y-%m-%d-%a',
      time_format = '%H:%M',
    },

    follow_url_func = function(url)
      -- Open the URL in the default web browser.
      vim.fn.jobstart { 'open', url } -- Mac OS
    end,

    open_app_foreground = true,
    new_notes_location = 'notes_subdir',
    preferred_link_style = 'wiki',
    disable_frontmatter = true,
  },
  setup = {},
}

-- vim: ts=2 sts=2 sw=2 et
