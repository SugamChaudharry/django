return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
      "",
      "",
      "",
      "",
      "███████╗██╗   ██╗ ██████╗  █████╗ ███╗   ███╗",
      "██╔════╝██║   ██║██╔════╝ ██╔══██╗████╗ ████║",
      "███████╗██║   ██║██║  ███╗███████║██╔████╔██║",
      "╚════██║██║   ██║██║   ██║██╔══██║██║╚██╔╝██║",
      "███████║╚██████╔╝╚██████╔╝██║  ██║██║ ╚═╝ ██║" ,
      "╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝",
      "",
      "",
    }    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("C-n", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fg", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
    }
    dashboard.section.footer.val = {
     "",
     "",
     "",
      " ██████╗██╗  ██╗ █████╗ ██╗   ██╗██████╗ ██╗  ██╗ █████╗ ██████╗ ██╗   ██╗",
      "██╔════╝██║  ██║██╔══██╗██║   ██║██╔══██╗██║  ██║██╔══██╗██╔══██╗╚██╗ ██╔╝",
      "██║     ███████║███████║██║   ██║██║  ██║███████║███████║██████╔╝ ╚████╔╝ ",
      "██║     ██╔══██║██╔══██║██║   ██║██║  ██║██╔══██║██╔══██║██╔══██╗  ╚██╔╝  ",
      "╚██████╗██║  ██║██║  ██║╚██████╔╝██████╔╝██║  ██║██║  ██║██║  ██║   ██║   ",
      " ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ",
      "                                                                          ",
 }
    vim.cmd([[
      highlight AlphaHeader guifg=#587396 guibg=NONE
      ]])

    -- Apply the highlight to the header
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.footer.opts.hl = "AlphaHeader"
    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
