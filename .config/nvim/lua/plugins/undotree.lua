-- ctrl + w to navigate undo tree
return {
  -- undotree - enables visualizing undo history
	"mbbill/undotree",
	config = function()
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
	end,
}
