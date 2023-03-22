local status_ok, neo_tree = pcall(require, "neo-tree")
if not status_ok then
	return
end

neo_tree.setup({
	window = {
		mapping_options = {
			noremap = true,
			nowait = true,
		},
		mappings = {
			["o"] = "open",
		},
	},
})