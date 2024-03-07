local M = {}

M.custom = {
  n = {
    ["<C-S-j>"] = {":m .+1<CR>==", "Move current line down"},
    ["<C-S-k>"] = {":m .-2<CR>==", "Move current line up"},
  },
  i  = {
    ["<C-S-j>"] = {"<Esc>:m .+1<CR>==gi", "Move line selection down"},
    ["<C-S-k>"] = {"<Esc>:m .-2<CR>==gi", "Move line selection up"},
  },
  v  = {
    ["<C-S-j>"] = {":m '>+1<CR>gv=gv", "Move current selection down"},
    ["<C-S-k>"] = {":m '<-2<CR>gv=gv", "Move current selection up"},
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
       sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last()
      end,
      "Debug last go test"
    }
  }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    }
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

return M
