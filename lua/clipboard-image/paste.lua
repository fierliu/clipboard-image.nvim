local M = {}
local conf_utils = require "clipboard-image.config"
local utils = require "clipboard-image.utils"
local check_dependency = require("clipboard-image.health").check_current_dep
local cmd_check, cmd_paste = utils.get_clip_command()

local paste_img_to = function(path)
  print("cmd_paste: " .. cmd_paste)
  print("path: " .. path)
  print("format: " .. string.format(cmd_paste, path))
  os.execute(string.format(cmd_paste, path))
end

M.paste_img = function(opts)
  local is_dep_exist, deps_msg = check_dependency()
  if not is_dep_exist then
    vim.notify(deps_msg, vim.log.levels.ERROR)
    return false
  end

  local content = utils.get_clip_content(cmd_check)
  if utils.is_clipboard_img(content) ~= true then
    vim.notify("There is no image data in clipboard", vim.log.levels.ERROR)
  else
    local conf_toload = conf_utils.get_usable_config()
    conf_toload = conf_utils.merge_config(conf_toload, opts)

    local conf = conf_utils.load_config(conf_toload)
    local path = utils.get_img_path(conf.img_dir, conf.img_name)
    print("aster: " .. path)
    local path_txt = utils.get_img_path(conf.img_dir_txt, conf.img_name, "txt")

      	-- get markdown filename
	local file_name = vim.fn.expand("%")
	-- delete .md of filename
	local file_name_short = string.sub(file_name, 0, string.len(file_name) - 3)
    
    -- utils.create_dir(".assets/" .. file_name_short)
    utils.create_dir(".assets/" .. file_name_short)
    paste_img_to(path)

    utils.insert_txt(conf.affix, path_txt)

    if type(conf.img_handler) == "function" then
      conf.img_handler {
        name = conf.img_name,
        path = path,
      }
    end
  end
end

return M
