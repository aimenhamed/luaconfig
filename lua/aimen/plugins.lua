-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
  git = {
    clone_timeout = 300, -- Timeout, in seconds, for git clones
  },
}

return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"

  use "nvim-lua/plenary.nvim"
  use "nvim-telescope/telescope.nvim"

  use({
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    })

  use "numToStr/Comment.nvim"

  use "akinsho/bufferline.nvim"
  use "nvim-lualine/lualine.nvim"

  use "nvim-treesitter/nvim-treesitter"

  use "L3MON4D3/LuaSnip"

  use "TimUntersberger/neogit"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "jose-elias-alvarez/null-ls.nvim"

  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  -- CMP
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- colorschemes
  use "folke/tokyonight.nvim"
  use "lunarvim/darkplus.nvim"
  use "gruvbox-community/gruvbox"

end)
