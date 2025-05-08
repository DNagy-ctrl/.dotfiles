  local plugins = {
    {
      "williamboman/mason.nvim",
    },{
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = {
          "pyright",
        },
    }
    },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-fzf-native.nvim" }
	},
	{
		"hat0uma/csvview.nvim",
		opts = { view = { display_mode = "border" } },
	}
  }
  return plugins
