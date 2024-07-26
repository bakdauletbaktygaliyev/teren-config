return {
	"tpope/vim-dadbod",
	"kristijanhusak/vim-dadbod-ui",
	"kristijanhusak/vim-dadbod-completion",
	event = { "BufReadPost", "BufNewFile" },
	cmd = { "DB", "DBUI", "DBCompletionClearCache", "DBUIAddConnection", "DBUIToggle" },
}
