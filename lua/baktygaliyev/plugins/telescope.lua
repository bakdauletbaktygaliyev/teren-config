return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	event = "VimEnter",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			-- `build` is used to run some command when the plugin is installed/updated.
			-- This is only run then, not every time Neovim starts up.
			build = "make",
			-- `cond` is a condition used to determine whether this plugin should be
			-- installed and loaded.
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
		{ "nvim-telescope/telescope-ui-select.nvim" },
		"nvim-telescope/telescope-smart-history.nvim",
		-- Useful for getting pretty icons, but requires a Nerd Font.
		{
			"nvim-tree/nvim-web-devicons",
			enabled = vim.g.have_nerd_font
		},
	},
	config = function()
		-- The easiest way to use Telescope, is to start by doing something like:
		--  :Telescope help_tags
		-- Two important keymaps to use while in Telescope are:
		--  - Insert mode: <c-/>
		--  - Normal mode: ?
		require("telescope").setup({
			defaults = {
				layout_strategy = "horizontal",
				layout_config = {
					horizontal = {
						prompt_position = "bottom",
						width = { padding = 0 },
						height = { padding = 0 },
						preview_width = 0.5,
					},
				},
			},
			-- You can put your default mappings / updates / etc. in here
			--  All the info you're looking for is in `:help telescope.setup()`
			pickers = {
				find_files = {
					hidden = true,
				},
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			},
		})

		-- Enable Telescope extensions if they are installed
		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")
		pcall(require("telescope").load_extension, "smart_history")

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
		vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
		vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
		vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
		vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
		vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
		vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
		vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
		vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
		vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

		-- vim.keymap.set("n", "gd", builtin.lsp_definitions, { "LSP: [G]oto [D]efinition" })
		-- vim.keymap.set("n", "gr", builtin.lsp_references, { "LSP: [G]oto [R]eferences" })
		-- vim.keymap.set("n", "gI", builtin.lsp_implementations, { "LSP: [G]oto [I]mplementation" })
		-- vim.keymap.set("n", "<leader>D", builtin.lsp_type_definitions, { "LSP: Type [D]efinition" })
		-- vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols, { "LSP: [D]ocument [S]ymbols" })
		-- vim.keymap.set("n", "<leader>ws", builtin.lsp_workspace_symbols, { "LSP: [W]orkspace [S]ymbols" })
		-- vim.keymap.set("n", "<leader>rn", builtin.lsp.buf.rename, { "LSP: [R]e[n]ame" })
		-- vim.keymap.set("n", "<leader>ca", builtin.lsp.buf.code_action, { "LSP: [C]ode [A]ction" })
		-- vim.keymap.set("n", "K", builtin.lsp.buf.hover, { "LSP: Hover Documentation" })
		-- vim.keymap.set("n", "gD", builtin.lsp.buf.declaration, { "LSP: [G]oto [D]eclaration" })

		-- Slightly advanced example of overriding default behavior and theme
		vim.keymap.set("n", "<leader>/", function()
			-- You can pass additional configuration to Telescope to change the theme, layout, etc.
			builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
				winblend = 10,
				previewer = false,
			}))
		end, { desc = "[/] Fuzzily search in current buffer" })

		-- It's also possible to pass additional configuration options.
		--  See `:help telescope.builtin.live_grep()` for information about particular keys
		vim.keymap.set("n", "<leader>s/", function()
			builtin.live_grep({
				grep_open_files = true,
				prompt_title = "Live Grep in Open Files",
			})
		end, { desc = "[S]earch [/] in Open Files" })

		-- Shortcut for searching your Neovim configuration files
		vim.keymap.set("n", "<leader>sn", function()
			builtin.find_files({ cwd = vim.fn.stdpath("config") })
		end, { desc = "[S]earch [N]eovim files" })
	end,
}
