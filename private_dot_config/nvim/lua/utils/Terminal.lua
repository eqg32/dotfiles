local event = require("nui.utils.autocmd").event
local terminal = require("nui.popup")({
	position = {
		row = "85%",
		col = "95%",
	},
	size = {
		width = "40%",
		height = "40%",
	},
	enter = true,
	focusable = true,
	border = {
		style = "single",
		text = {
			top = "[Terminal]",
			top_align = "center",
		},
	},
	win_options = {
		winhighlight = "Normal:Normal,FloatBorder:Char",
	},
})

local initialised = false
local opened = false
local specific = {
	-- ["python"] = "pipenv shell && clear",
}

local function toggle()
	local command = ""

	if not initialised then
		if specific[vim.bo.filetype] then
			command = "terminal " .. specific[vim.bo.filetype]
		else
			command = "terminal"
		end
		terminal:mount()
		vim.cmd(command)
		initialised = true
	end

	if opened then
		terminal:hide()
		opened = false
	else
		terminal:show()
		opened = true
	end

	terminal:on({ event.QuitPre, event.TermClose }, function()
		terminal:unmount()
		initialised = false
		opened = false
	end)
end

local function init()
	vim.api.nvim_create_user_command("TerminalToggle", toggle, {})
end

return init()
