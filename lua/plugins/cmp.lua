return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    vim.b.completion = true

    Snacks.toggle({
      name = "Completion",
      get = function()
        return vim.b.completion
      end,
      set = function(state)
        vim.b.completion = state
      end,
    }):map("<leader>uk")

    opts.enabled = function()
      return vim.b.completion ~= false
    end

    -- Disable preselect and autocomplete
    opts.completion = opts.completion or {}
    opts.completion.list = opts.completion.list or {}
    opts.completion.list.selection = {
      preselect = false,
      auto_insert = false,
    }

    -- Keymap config
    opts.keymap = {
      ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
      ['<C-e>']     = { 'hide' },
      ['<C-y>']     = { 'select_and_accept' },
      ['<Up>']      = { 'select_prev', 'fallback' },
      ['<Down>']    = { 'select_next', 'fallback' },
      ['<C-p>']     = { 'select_prev', 'fallback_to_mappings' },
      ['<C-n>']     = { 'select_next', 'fallback_to_mappings' },
      ['<CR>']      = {},
      ['<C-b>']     = { 'scroll_documentation_up', 'fallback' },
      ['<C-f>']     = { 'scroll_documentation_down', 'fallback' },
      ['<Tab>']     = { 'snippet_forward', 'fallback' },
      ['<S-Tab>']   = { 'snippet_backward', 'fallback' },
      ['<C-k>']     = { 'show_signature', 'hide_signature', 'fallback' },
    }

    return opts
  end,
}
