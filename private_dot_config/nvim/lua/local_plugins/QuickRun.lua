local event = require("nui.utils.autocmd").event
local quickrun = require("nui.popup")({
    position = {
	row = "85%",
	col = "95%"
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
	    top = "[Quick Run]",
	    top_align = "center",
	},
    },
    win_options = {
	winhighlight = "Normal:Normal,FloatBorder:Char",
    },
})


local executable = vim.fn.expand("%:p")
local to_change = false
local commands = {
    ["python"] = "pipenv run python %s",
    ["cpp"] = "gcc -lstdc++ %s && ./a.out && rm -rf a.out",
    ["lua"] = "lua %s",
    ["go"] = "go run %s",
}


local function run()
    local command = "terminal " .. string.format(commands[vim.bo.filetype], executable)
    if to_change then
	executable = vim.fn.expand("%:p")
	to_change = false
	command = "terminal " .. string.format(commands[vim.bo.filetype], executable)
    end

    quickrun:mount()
    vim.cmd(command)

    quickrun:on(
	{ event.QuitPre, event.TermLeave },
	function ()
	    quickrun:unmount()
	end
    )
end


local function init()
    vim.api.nvim_create_user_command("QuickRun", run, {})
    vim.api.nvim_create_user_command(
	"ChangeExecutable",
	function ()
	    to_change = true
	end,
	{}
    )
end


return init()
