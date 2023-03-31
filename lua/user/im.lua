local status_ok, im_select = pcall(require, "im_select")
if not status_ok then
	return
end

local function is_window_or_mac()
	local is_windows = vim.fn.has("win32") == 1
	local is_mac = vim.fn.has("mac") == 1

	return is_windows or is_mac
end

if is_window_or_mac() then
	im_select.setup({
		disable_auto_restore = 1,
	})
end
