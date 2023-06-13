local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

telescope.setup({
	defaults = {
		layout_config = {
			horizontal = {
				preview_width = 0.6,
			},
		},
	},
})
