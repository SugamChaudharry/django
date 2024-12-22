vim.cmd("set expandtab")
vim.cmd("set tabstop=1")
vim.cmd("set softtabstop=1")
vim.cmd("set shiftwidth=1")
vim.cmd("set smartindent")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set scrolloff=7")
vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set("n", "<leader>t", ":colorscheme ")
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<leader><CR>", ":so ~/.config/nvim/init.lua<CR>")
vim.keymap.set("n", "<leader>w", ":wa<CR>")

-- coustom usecase
vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true })
vim.keymap.set("i", "<C-z>", "<C-o>u", { noremap = true, silent = true })
vim.keymap.set("i", "<C-d>", "<C-o>diw", { noremap = true, silent = true })
vim.keymap.set("i", "<C-h>", "<C-o>b", { noremap = true, silent = true }) -- Jump to the start of the previous word
vim.keymap.set("i", "<C-j>", "<C-o>j", { noremap = true, silent = true }) -- Jump to the start of the previous word
vim.keymap.set("i", "<C-k>", "<C-o>k", { noremap = true, silent = true }) -- Jump to the start of the previous word
vim.keymap.set("i", "<C-l>", "<C-o>e<C-o>l", { noremap = true, silent = true }) -- Jump to the end of the current/next word
vim.keymap.set("i", "<C-CR>", "<C-o>o", { noremap = true, silent = true }) -- Jump to the end of the current/next word

-- Move lines up and down in NORMAL mode
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true }) -- Move line down
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true }) -- Move line up

-- Move selected lines in VISUAL mode
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true }) -- Move selection down
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true }) -- Move selection up

vim.keymap.set(
	"n",
	"<leader>ra",
	[[:%s/\<<C-r><C-w>\>//g<Left><Left>]],
	{ noremap = true, silent = false, desc = "Replace all occurrences of the current word" }
)

--
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true
vim.opt.clipboard = "unnamedplus"

-- Enable folding
vim.o.foldmethod = "indent" -- Fold based on indentation (great for HTML/JSX)
vim.o.foldlevel = 98 -- Start with all folds open
vim.o.foldenable = true -- Enable folding by default

vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bp", ":bprev<CR>", { desc = "Previous Buffer" })
vim.keymap.set("n", "<leader>bl", ":buffers<CR>", { desc = "List Buffers" })
vim.keymap.set("n", "<leader>bb", ":buffer<Space>", { desc = "Switch Buffer" })

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.number = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true

vim.opt.cmdheight = 0
vim.opt.laststatus = 0
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false

vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.keymap.set("n", "l", "l", { noremap = true, silent = true })
