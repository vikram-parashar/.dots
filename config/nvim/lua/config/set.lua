-- Line numbers
vim.opt.relativenumber = true      -- Enable relative line numbers

-- Command height
vim.opt.cmdheight = 0              -- Set command height to 0, hides the command line unless needed

-- Shell
vim.opt.shell = '/bin/fish'        -- Use fish shell for terminal commands

-- Searching
vim.opt.ignorecase = true          -- Ignore case in search patterns
vim.opt.smartcase = true           -- Override 'ignorecase' if the search pattern contains uppercase letters

-- Tab and indent settings
vim.opt.shiftwidth = 2             -- Number of spaces to use for each step of (auto)indent
vim.opt.tabstop = 2                -- Number of spaces that a <Tab> in the file counts for
vim.opt.expandtab = true           -- Convert tabs to spaces
vim.opt.smartindent = true         -- Automatically insert indents in some cases

-- Text wrapping
vim.opt.wrap = true               -- enable line wrapping

-- Incremental search
vim.opt.incsearch = true           -- Show matches as you type
vim.opt.inccommand = "nosplit"     -- Preview incremental substitute without opening a split

-- Colors and appearance
vim.opt.termguicolors = true       -- Enable true color support

-- Scrolling
vim.opt.scrolloff = 16             -- Keep 16 lines visible above and below the cursor

-- Filename characters
vim.opt.isfname:append("@-@")      -- Treat '@' as part of a file name

-- Cursor line
vim.opt.cursorline = true          -- Highlight the screen line of the cursor

-- Keywords
vim.opt.iskeyword:append("-")      -- Treat '-' as part of
