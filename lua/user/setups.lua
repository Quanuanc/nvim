-- ref: https://github.com/keaising/dotfile/blob/master/nvim/.config/nvim/lua/user/setups.lua
local plugin_list = {
	im_select = {
		disable_auto_restore = 1,
	},
}

for p, opt in pairs(plugin_list) do
	local status_ok, plugin = pcall(require, p)
	if not status_ok then
		goto continue
	end

	plugin.setup(opt)

	::continue::
end
