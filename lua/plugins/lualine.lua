local device_name = {
  function()
    local flutter_decoration = vim.g.flutter_tools_decorations
    if not flutter_decoration or not flutter_decoration.device then
      return " No Device "
    end
    local device = flutter_decoration.device
    local str = {}
    if device.platform then
      str[#str + 1] = "(" .. device.platform .. ")"
    end
    str[#str + 1] = device.name
    return " " .. table.concat(str, " ") .. " "
  end,
  update = {
    "User",
    pattern = "FlutterToolsAppStarted",
    callback = function()
      vim.schedule(function()
        vim.cmd.redrawstatus({ bang = true })
      end)
    end,
  },
}

return {
  "nvim-lualine/lualine.nvim",
  -- event = "VeryLazy",
  opts = {
    -- table.insert(opts.sections.lualine_z, device_name)
    sections = {
      lualine_z = {
        device_name,
      },
    },
  },
}
