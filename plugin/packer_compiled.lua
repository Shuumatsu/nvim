-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/curry/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/curry/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/curry/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/curry/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/curry/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  gruvbox = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["guihua.lua"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/guihua.lua"
  },
  kommentary = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nabla.nvim"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/nabla.nvim"
  },
  ["navigator.lua"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/navigator.lua"
  },
  neorg = {
    config = { "\27LJ\1\2|\0\0\4\0\b\0\r4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0002\3\0\0:\3\4\0022\3\0\0:\3\5\2:\2\a\1>\0\2\1G\0\1\0\tload\1\0\0\24core.norg.concealer\18core.defaults\1\0\0\nsetup\nneorg\frequire\0" },
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/neorg"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/nvim-lightbulb"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/rust-tools.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/curry/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neorg
time([[Config for neorg]], true)
try_loadstring("\27LJ\1\2|\0\0\4\0\b\0\r4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0002\3\0\0:\3\4\0022\3\0\0:\3\5\2:\2\a\1>\0\2\1G\0\1\0\tload\1\0\0\24core.norg.concealer\18core.defaults\1\0\0\nsetup\nneorg\frequire\0", "config", "neorg")
time([[Config for neorg]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
