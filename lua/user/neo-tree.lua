local status_ok, neo_tree = pcall(require, "neo-tree")
if not status_ok then
	return
end

neo_tree.setup({
	enable_diagnostics = false,
	window = {
		mapping_options = {
			noremap = true,
			nowait = true,
		},
		mappings = {
			["o"] = "open",
		},
	},
	filesystem = {
		use_libuv_file_watcher = true,
	},
})
