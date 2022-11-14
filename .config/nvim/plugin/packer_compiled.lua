-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/yume/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/yume/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/yume/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/yume/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/yume/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  LuaSnip = {
    config = { "\27LJ\2\2�\2\0\0\a\0\r\0\0236\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\3\4\0'\4\5\0'\5\6\0\18\6\1\0B\2\5\1\18\2\0\0'\3\4\0'\4\a\0'\5\b\0\18\6\1\0B\2\5\0016\2\t\0'\3\n\0B\2\2\0029\2\v\0025\3\f\0B\2\2\1K\0\1\0\1\0\1\npaths\16~/.snippets\tload\29luasnip.loaders.from_lua\frequire-<cmd>lua require('luasnip').jump(-1)<CR>\22<leader><leader>;,<cmd>lua require('luasnip').jump(1)<CR>\22<leader><leader>'\6i\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["ack.vim"] = {
    config = { "\27LJ\2\2K\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0'rg --vimgrep --smart-case --hidden\vackprg\6g\bvim\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/ack.vim",
    url = "https://github.com/mileszs/ack.vim"
  },
  ["beacon.nvim"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/beacon.nvim",
    url = "https://github.com/DanilaMihailov/beacon.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\2\\\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\tmode\ttabs\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    config = { "\27LJ\2\2:\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0\27colorscheme catppuccin\bcmd\bvim\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dressing.nvim"] = {
    config = { "\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rdressing\frequire\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["eyeliner.nvim"] = {
    config = { "\27LJ\2\2Y\0\0\4\0\5\0\b6\0\0\0009\0\1\0009\0\2\0)\1\0\0'\2\3\0005\3\4\0B\0\4\1K\0\1\0\1\0\1\14underline\2\20EyelinerPrimary\16nvim_set_hl\bapi\bvim�\1\1\0\4\0\f\0\0186\0\0\0009\0\1\0009\0\2\0)\1\0\0'\2\3\0005\3\4\0B\0\4\0016\0\0\0009\0\1\0009\0\5\0'\1\6\0005\2\b\0005\3\a\0=\3\t\0023\3\n\0=\3\v\2B\0\3\1K\0\1\0\rcallback\0\fpattern\1\0\0\1\2\0\0\6*\16ColorScheme\24nvim_create_autocmd\1\0\1\14underline\2\20EyelinerPrimary\16nvim_set_hl\bapi\bvim\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/eyeliner.nvim",
    url = "https://github.com/jinh0/eyeliner.nvim"
  },
  fzf = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["lsp-inlayhints.nvim"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/lsp-inlayhints.nvim",
    url = "https://github.com/lvimuser/lsp-inlayhints.nvim"
  },
  ["lspkind-nvim"] = {
    config = { "\27LJ\2\2�\3\0\0\4\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\3\0005\3\4\0=\3\5\2B\1\2\1K\0\1\0\15symbol_map\1\0\25\tText\b\rFunction\b\rOperator\b\nColor\b\nClass\bﴯ\vModule\b\rConstant\b\rProperty\bﰠ\vMethod\b\15EnumMember\b\tUnit\b塞\14Interface\b\vStruct\bפּ\rVariable\b\fSnippet\b\vFolder\b\nEvent\b\nField\bﰠ\18TypeParameter\5\tFile\b\nValue\b\16Constructor\b\tEnum\b\fKeyword\b\14Reference\b\1\0\2\tmode\16symbol_text\vpreset\rcodicons\tinit\flspkind\frequire\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2�\1\0\0\5\0\b\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0004\3\3\0005\4\3\0>\4\1\3=\3\5\2=\2\a\1B\0\2\1K\0\1\0\rsections\1\0\0\14lualine_c\1\0\0\1\2\3\0\rfilename\20shorting_target\3(\16file_status\2\tpath\3\1\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\2�\b\0\0\5\0$\0C6\0\0\0009\0\1\0'\1\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\1\5\0005\2\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\a\0005\2\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\t\0005\2\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\v\0005\2\f\0B\0\3\0016\0\0\0009\0\r\0009\0\14\0'\1\15\0'\2\16\0'\3\17\0005\4\18\0B\0\5\0016\0\0\0009\0\r\0009\0\14\0'\1\15\0'\2\19\0'\3\20\0005\4\21\0B\0\5\0016\0\0\0009\0\1\0'\1\22\0B\0\2\0016\0\0\0009\0\1\0'\1\23\0B\0\2\0016\0\24\0'\1\25\0B\0\2\0029\0\26\0005\1\28\0005\2\27\0=\2\29\0015\2!\0005\3\30\0005\4\31\0=\4 \3=\3\"\2=\2#\1B\0\2\1K\0\1\0\15filesystem\19filtered_items\1\0\1\26hijack_netrw_behavior\17open_current\17hide_by_name\1\2\0\0\17node_modules\1\0\2\20hide_gitignored\2\18hide_dotfiles\1\vwindow\1\0\0\1\0\1\nwidth\3\25\nsetup\rneo-tree\frequire?:command! Sex sp | Neotree toggle current reveal_force_cwd9:command! Ex Neotree toggle current reveal_force_cwd\1\0\1\tdesc6change working directory to current file location&<Cmd>Neotree reveal_force_cwd<CR>\agp\1\0\1\tdesc\19open file tree\28<Cmd>Neotree toggle<CR>\18<leader><Tab>\6n\bset\vkeymap\1\0\2\ttext\b\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["noice.nvim"] = {
    cond = { true },
    config = { "\27LJ\2\2�\6\0\0\6\0*\00056\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\v\0005\3\5\0005\4\4\0=\4\6\0035\4\b\0005\5\a\0=\5\t\4=\4\n\3=\3\f\0025\3\r\0005\4\14\0=\4\15\0035\4\16\0=\4\6\0035\4\17\0005\5\18\0=\5\19\4=\4\20\0035\4\22\0005\5\21\0=\5\t\4=\4\n\3=\3\23\2=\2\24\0014\2\3\0005\3\26\0005\4\25\0=\4\27\0035\4\28\0=\4\29\3>\3\1\2=\2\30\0015\2\31\0=\2 \0015\2$\0005\3#\0005\4\"\0005\5!\0=\5\t\4=\4\n\3=\3\29\2=\2%\0015\2'\0005\3&\0=\3(\2=\2)\1B\0\2\1K\0\1\0\blsp\rprogress\1\0\0\1\0\1\fenabled\1\18documentation\1\0\0\1\0\0\1\0\0\1\0\1\16FloatBorder\23DiagnosticSignInfo\fpresets\1\0\2\19lsp_doc_border\2\26long_message_to_split\2\vroutes\topts\1\0\1\tskip\2\vfilter\1\0\0\1\0\3\tkind\5\nevent\rmsg_show\tfind\fwritten\nviews\14popupmenu\1\0\0\1\0\2\16FloatBorder\23DiagnosticSignInfo\vNormal\vNormal\vborder\fpadding\1\3\0\0\3\0\4\0����\3\1\0\1\nstyle\frounded\1\0\2\nwidth\3d\vheight\3\n\rposition\1\0\2\brow\3\b\bcol\b50%\1\0\1\rrelative\veditor\18cmdline_popup\1\0\0\16win_options\17winhighlight\1\0\0\1\0\4\16FloatBorder\23DiagnosticSignInfo\vSearch\5\14IncSearch\5\vNormal\vNormal\tsize\1\0\0\1\0\2\nwidth\b40%\vheight\tauto\1\0\1\fenabled\1\nsetup\nnoice\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/yume/.local/share/nvim/site/pack/packer/opt/noice.nvim",
    url = "https://github.com/folke/noice.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-bqf"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/yume/.local/share/nvim/site/pack/packer/opt/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire�\b\1\0\b\0:\0~6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0005\3\a\0005\4\5\0003\5\4\0=\5\6\4=\4\b\0035\4\f\0009\5\t\0009\5\n\0059\5\v\5B\5\1\2=\5\r\0049\5\t\0009\5\n\0059\5\v\5B\5\1\2=\5\14\4=\4\n\0035\4\17\0009\5\15\0009\5\16\5B\5\1\2=\5\18\0049\5\15\0009\5\19\5B\5\1\2=\5\20\0049\5\15\0009\5\16\5B\5\1\2=\5\21\0049\5\15\0009\5\19\5B\5\1\2=\5\22\0049\5\15\0009\5\23\5)\6��B\5\2\2=\5\24\0049\5\15\0009\5\23\5)\6\4\0B\5\2\2=\5\25\0049\5\15\0009\6\15\0009\6\26\6B\6\1\0025\a\27\0B\5\3\2=\5\28\0049\5\15\0009\5\29\5B\5\1\2=\5\30\0049\5\15\0009\5\31\0055\6\"\0009\a \0009\a!\a=\a#\6B\5\2\2=\5$\4=\4\15\0039\4\t\0009\4%\0044\5\a\0005\6&\0>\6\1\0055\6'\0>\6\2\0055\6(\0>\6\3\0055\6)\0>\6\4\0055\6*\0>\6\5\0055\6+\0>\6\6\5B\4\2\2=\4%\0035\4.\0009\5,\0015\6-\0B\5\2\2=\5/\4=\0040\3B\2\2\0019\2\3\0009\0021\0025\0032\0005\0044\0009\5\15\0009\0053\0059\0051\5B\5\1\2=\5\15\0044\5\3\0005\0065\0>\6\1\5=\5%\4B\2\3\0019\2\3\0009\0021\0025\0036\0005\0047\0009\5\15\0009\0053\0059\0051\5B\5\1\2=\5\15\0044\5\3\0005\0068\0>\6\1\0055\0069\0>\6\2\5=\5%\4B\2\3\1K\0\1\0\1\0\1\tname\tpath\1\0\1\tname\fcmdline\1\0\0\1\2\0\0\6:\1\0\1\tname\vbuffer\1\0\0\vpreset\1\3\0\0\6/\6?\fcmdline\15formatting\vformat\1\0\0\1\0\2\rmaxwidth\0032\15wirth_text\1\15cmp_format\1\0\1\tname\rnvim_lua\1\0\1\tname\fluasnip\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\rnvim_lsp\fsources\t<CR>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\n<C-b>\16scroll_docs\f<Right>\v<Left>\v<Down>\21select_next_item\t<Up>\1\0\0\21select_prev_item\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\flspkind\bcmp\frequire\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-hlslens"] = {
    config = { "\27LJ\2\0025\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fhlslens\frequire\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-lint"] = {
    config = { "\27LJ\2\2Y\0\0\3\0\6\0\b6\0\0\0'\1\1\0B\0\2\0025\1\4\0005\2\3\0=\2\5\1=\1\2\0K\0\1\0\ago\1\0\0\1\2\0\0\17golangcilint\18linters_by_ft\tlint\frequire\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/nvim-lint",
    url = "https://github.com/mfussenegger/nvim-lint"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    config = { "\27LJ\2\2J\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\14highlight\2\nsetup\15nvim-navic\frequire\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-spectre"] = {
    config = { "\27LJ\2\2�\1\0\0\5\0\15\0\0196\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\1B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\1\v\0'\2\f\0'\3\r\0005\4\14\0B\0\5\1K\0\1\0\1\0\1\tdesc\23search and replace+<Cmd>lua require('spectre').open()<CR>\14<leader>S\6n\bset\vkeymap\bvim\19replace_engine\1\0\0\bsed\1\0\0\1\0\1\bcmd\tgsed\nsetup\fspectre\frequire\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/nvim-pack/nvim-spectre"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\2�\t\0\0\4\0:\0=6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\5\0005\3\4\0=\3\6\0025\3\a\0=\3\b\0025\3\t\0=\3\n\0025\3\v\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\0025\3\27\0=\3\28\0025\3\29\0=\3\30\0025\3\31\0=\3 \0025\3!\0=\3\"\0025\3#\0=\3$\0025\3%\0=\3&\0025\3'\0=\3(\0025\3)\0=\3*\0025\3+\0=\3,\0025\3-\0=\3.\0025\3/\0=\0030\0025\0031\0=\0032\0025\0033\0=\0034\0025\0035\0=\0036\0025\0037\0=\0038\2=\0029\1B\0\2\1K\0\1\0\fsymbols\18TypeParameter\1\0\2\ahl\15GruvboxRed\ticon\t𝙏\rOperator\1\0\2\ahl\15TSOperator\ticon\6+\nEvent\1\0\2\ahl\17GruvboxGreen\ticon\t🗲\vStruct\1\0\2\ahl\17GruvboxGreen\ticon\t𝓢\15EnumMember\1\0\2\ahl\15GruvboxRed\ticon\b\tNull\1\0\2\ahl\17GruvboxGreen\ticon\tNULL\bKey\1\0\2\ahl\17GruvboxGreen\ticon\t🔐\vObject\1\0\2\ahl\17GruvboxGreen\ticon\b⦿\nArray\1\0\2\ahl\18GruvboxPurple\ticon\b\fBoolean\1\0\2\ahl\14TSBoolean\ticon\b⊨\vNumber\1\0\2\ahl\rTSNumber\ticon\6#\vString\1\0\2\ahl\16GruvboxGray\ticon\t𝓐\rConstant\1\0\2\ahl\18GruvboxPurple\ticon\b\rVariable\1\0\2\ahl\18GruvboxPurple\ticon\b\rFunction\1\0\2\ahl\18GruvboxYellow\ticon\b\14Interface\1\0\2\ahl\17GruvboxGreen\ticon\bﰮ\tEnum\1\0\2\ahl\17GruvboxGreen\ticon\bℰ\16Constructor\1\0\2\ahl\18TSConstructor\ticon\b\nField\1\0\2\ahl\15GruvboxRed\ticon\b\rProperty\1\0\2\ahl\18GruvboxOrange\ticon\b\vMethod\1\0\2\ahl\18GruvboxOrange\ticon\aƒ\nClass\1\0\2\ahl\17GruvboxGreen\ticon\t𝓒\fPackage\1\0\2\ahl\16GruvboxBlue\ticon\b\14Namespace\1\0\2\ahl\16GruvboxBlue\ticon\b\vModule\1\0\2\ahl\16GruvboxBlue\ticon\b\tFile\1\0\0\1\0\2\ahl\16GruvboxAqua\ticon\b\1\0\4\15auto_close\1\27highlight_hovered_item\2\rposition\tleft\nwidth\3\15\nsetup\20symbols-outline\frequire\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope-changed-files"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/telescope-changed-files",
    url = "https://github.com/axkirillov/telescope-changed-files"
  },
  ["telescope-emoji.nvim"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/telescope-emoji.nvim",
    url = "https://github.com/xiyaowong/telescope-emoji.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-heading.nvim"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/telescope-heading.nvim",
    url = "https://github.com/crispgm/telescope-heading.nvim"
  },
  ["telescope-tabs"] = {
    config = { "\27LJ\2\2�\1\0\0\5\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0005\4\6\0B\0\5\1K\0\1\0\1\0\1\tdesc\16search tabs7<Cmd>lua require('telescope-tabs').list_tabs()<CR>\14<leader>t\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/telescope-tabs",
    url = "https://github.com/LukasPietzschmann/telescope-tabs"
  },
  ["telescope-ui-select.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope-windows.nvim"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/telescope-windows.nvim",
    url = "https://github.com/kyoh86/telescope-windows.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2�\21\0\0\b\0b\0�\0016\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0015\3\r\0005\4\v\0005\5\t\0005\6\5\0009\a\4\0=\a\6\0069\a\a\0=\a\b\6=\6\n\5=\5\f\4=\4\14\0035\4\16\0005\5\15\0=\5\17\4=\4\18\3B\2\2\0019\2\19\1'\3\20\0B\2\2\0019\2\19\1'\3\21\0B\2\2\0019\2\19\1'\3\22\0B\2\2\0019\2\19\1'\3\17\0B\2\2\0019\2\19\1'\3\23\0B\2\2\0019\2\19\1'\3\24\0B\2\2\0016\2\25\0009\2\26\2'\3\28\0=\3\27\0026\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4 \0'\5!\0005\6\"\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4#\0'\5$\0005\6%\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4&\0'\5'\0005\6(\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4)\0'\5*\0005\6+\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4,\0'\5-\0005\6.\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4/\0'\0050\0005\0061\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\0042\0'\0053\0005\0064\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\0045\0'\0056\0005\0067\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\0048\0'\0059\0005\6:\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4;\0'\5<\0005\6=\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4>\0'\5?\0005\6@\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4A\0'\5B\0005\6C\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4D\0'\5E\0005\6F\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4G\0'\5H\0005\6I\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4J\0'\5K\0005\6L\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4M\0'\5N\0005\6O\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4P\0'\5Q\0005\6R\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4S\0'\5T\0005\6U\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4V\0'\5W\0005\6X\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4Y\0'\5Z\0005\6[\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4\\\0'\5]\0005\6^\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4_\0'\5`\0005\6a\0B\2\5\1K\0\1\0\1\0\1\tdesc\16search text!<Cmd>Telescope live_grep<CR>\14<leader>x\1\0\1\tdesc\19search windows\31<Cmd>Telescope windows<CR>\14<leader>w\1\0\1\tdesc\30search treesitter symbols\"<Cmd>Telescope treesitter<CR>\14<leader>s\1\0\1\tdesc\31search current buffer text1<Cmd>Telescope current_buffer_fuzzy_find<CR>\14<leader>r\1\0\1\tdesc\25search quickfix list <Cmd>Telescope quickfix<CR>\14<leader>q\1\0\1\tdesc,search messages handled by Noice plugin\29<Cmd>Noice telescope<CR>\14<leader>n\1\0\1\tdesc\29search markdown headings\31<Cmd>Telescope heading<CR>\14<leader>m\1\0\1\tdesc\29search lsp document tree,<Cmd>Telescope lsp_document_symbols<CR>\15<leader>ls\1\0\1\tdesc\30search lsp code reference&<Cmd>Telescope lsp_references<CR>\15<leader>lr\1\0\1\tdesc\30search lsp outgoing calls*<Cmd>Telescope lsp_outgoing_calls<CR>\15<leader>lo\1\0\1\tdesc\30search lsp incoming calls*<Cmd>Telescope lsp_incoming_calls<CR>\15<leader>li\1\0\1\tdesc\27search lsp diagnostics#<Cmd>Telescope diagnostics<CR>\15<leader>ld\1\0\1\tdesc\24search key mappings\31<Cmd>Telescope keymaps<CR>\14<leader>k\1\0\1\tdesc\20search builtins\31<Cmd>Telescope builtin<CR>\14<leader>i\1\0\1\tdesc\16search help!<Cmd>Telescope help_tags<CR>\14<leader>h\1\0\1\tdesc\25search changed files%<Cmd>Telescope changed_files<CR>\14<leader>g\1\0\1\tdesc\17search files.<Cmd>Telescope find_files hidden=true<CR>\a;f\1\0\1\tdesc\23search Ex commands <Cmd>Telescope commands<CR>\15<leader>ex\1\0\1\tdesc\18search emojis\29<Cmd>Telescope emoji<CR>\15<leader>ej\1\0\1\tdesc\17search TODOs\27<Cmd>TodoTelescope<CR>\14<leader>d\1\0\1\tdesc\24search colorschemes#<Cmd>Telescope colorscheme<CR>\14<leader>c\1\0\1\tdesc\19search buffers\31<Cmd>Telescope buffers<CR>\a;b\6n\bset\vkeymap\tmain(telescope_changed_files_base_branch\6g\bvim\fwindows\14ui-select\bfzf\nemoji\18changed_files\19load_extension\15extensions\fheading\1\0\0\1\0\1\15treesitter\2\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\n<C-o>\28send_selected_to_qflist\n<esc>\1\0\0\nclose\nsetup\14telescope\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["treesitter-terraform-doc.nvim"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/treesitter-terraform-doc.nvim",
    url = "https://github.com/Afourcat/treesitter-terraform-doc.nvim"
  },
  ["vim-asterisk"] = {
    config = { "\27LJ\2\2�\4\0\0\5\0\r\0A6\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\6\0'\3\a\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\b\0'\3\t\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\n\0'\3\v\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\f\0'\2\4\0'\3\5\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\f\0'\2\6\0'\3\a\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\f\0'\2\b\0'\3\t\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\f\0'\2\n\0'\3\v\0004\4\0\0B\0\5\1K\0\1\0\6x@<Plug>(asterisk-gz#)<Cmd>lua require('hlslens').start()<CR>\ag#@<Plug>(asterisk-gz*)<Cmd>lua require('hlslens').start()<CR>\ag*?<Plug>(asterisk-z#)<Cmd>lua require('hlslens').start()<CR>\6#?<Plug>(asterisk-z*)<Cmd>lua require('hlslens').start()<CR>\6*\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/vim-asterisk",
    url = "https://github.com/haya14busa/vim-asterisk"
  },
  ["vim-highlightedyank"] = {
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/vim-highlightedyank",
    url = "https://github.com/machakann/vim-highlightedyank"
  },
  ["vim-illuminate"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/yume/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\2�\2\0\0\a\0\r\0\0236\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\3\4\0'\4\5\0'\5\6\0\18\6\1\0B\2\5\1\18\2\0\0'\3\4\0'\4\a\0'\5\b\0\18\6\1\0B\2\5\0016\2\t\0'\3\n\0B\2\2\0029\2\v\0025\3\f\0B\2\2\1K\0\1\0\1\0\1\npaths\16~/.snippets\tload\29luasnip.loaders.from_lua\frequire-<cmd>lua require('luasnip').jump(-1)<CR>\22<leader><leader>;,<cmd>lua require('luasnip').jump(1)<CR>\22<leader><leader>'\6i\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2C\0\1\3\0\4\0\a6\1\0\0'\2\1\0B\1\2\0029\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire�\b\1\0\b\0:\0~6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0005\3\a\0005\4\5\0003\5\4\0=\5\6\4=\4\b\0035\4\f\0009\5\t\0009\5\n\0059\5\v\5B\5\1\2=\5\r\0049\5\t\0009\5\n\0059\5\v\5B\5\1\2=\5\14\4=\4\n\0035\4\17\0009\5\15\0009\5\16\5B\5\1\2=\5\18\0049\5\15\0009\5\19\5B\5\1\2=\5\20\0049\5\15\0009\5\16\5B\5\1\2=\5\21\0049\5\15\0009\5\19\5B\5\1\2=\5\22\0049\5\15\0009\5\23\5)\6��B\5\2\2=\5\24\0049\5\15\0009\5\23\5)\6\4\0B\5\2\2=\5\25\0049\5\15\0009\6\15\0009\6\26\6B\6\1\0025\a\27\0B\5\3\2=\5\28\0049\5\15\0009\5\29\5B\5\1\2=\5\30\0049\5\15\0009\5\31\0055\6\"\0009\a \0009\a!\a=\a#\6B\5\2\2=\5$\4=\4\15\0039\4\t\0009\4%\0044\5\a\0005\6&\0>\6\1\0055\6'\0>\6\2\0055\6(\0>\6\3\0055\6)\0>\6\4\0055\6*\0>\6\5\0055\6+\0>\6\6\5B\4\2\2=\4%\0035\4.\0009\5,\0015\6-\0B\5\2\2=\5/\4=\0040\3B\2\2\0019\2\3\0009\0021\0025\0032\0005\0044\0009\5\15\0009\0053\0059\0051\5B\5\1\2=\5\15\0044\5\3\0005\0065\0>\6\1\5=\5%\4B\2\3\0019\2\3\0009\0021\0025\0036\0005\0047\0009\5\15\0009\0053\0059\0051\5B\5\1\2=\5\15\0044\5\3\0005\0068\0>\6\1\0055\0069\0>\6\2\5=\5%\4B\2\3\1K\0\1\0\1\0\1\tname\tpath\1\0\1\tname\fcmdline\1\0\0\1\2\0\0\6:\1\0\1\tname\vbuffer\1\0\0\vpreset\1\3\0\0\6/\6?\fcmdline\15formatting\vformat\1\0\0\1\0\2\rmaxwidth\0032\15wirth_text\1\15cmp_format\1\0\1\tname\rnvim_lua\1\0\1\tname\fluasnip\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\rnvim_lsp\fsources\t<CR>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\n<C-b>\16scroll_docs\f<Right>\v<Left>\v<Down>\21select_next_item\t<Up>\1\0\0\21select_prev_item\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\flspkind\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: telescope-ui-select.nvim
time([[Config for telescope-ui-select.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14telescope\frequire\0", "config", "telescope-ui-select.nvim")
time([[Config for telescope-ui-select.nvim]], false)
-- Config for: telescope-tabs
time([[Config for telescope-tabs]], true)
try_loadstring("\27LJ\2\2�\1\0\0\5\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0005\4\6\0B\0\5\1K\0\1\0\1\0\1\tdesc\16search tabs7<Cmd>lua require('telescope-tabs').list_tabs()<CR>\14<leader>t\6n\bset\vkeymap\bvim\0", "config", "telescope-tabs")
time([[Config for telescope-tabs]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2�\1\0\0\5\0\b\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0004\3\3\0005\4\3\0>\4\1\3=\3\5\2=\2\a\1B\0\2\1K\0\1\0\rsections\1\0\0\14lualine_c\1\0\0\1\2\3\0\rfilename\20shorting_target\3(\16file_status\2\tpath\3\1\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-lint
time([[Config for nvim-lint]], true)
try_loadstring("\27LJ\2\2Y\0\0\3\0\6\0\b6\0\0\0'\1\1\0B\0\2\0025\1\4\0005\2\3\0=\2\5\1=\1\2\0K\0\1\0\ago\1\0\0\1\2\0\0\17golangcilint\18linters_by_ft\tlint\frequire\0", "config", "nvim-lint")
time([[Config for nvim-lint]], false)
-- Config for: eyeliner.nvim
time([[Config for eyeliner.nvim]], true)
try_loadstring("\27LJ\2\2Y\0\0\4\0\5\0\b6\0\0\0009\0\1\0009\0\2\0)\1\0\0'\2\3\0005\3\4\0B\0\4\1K\0\1\0\1\0\1\14underline\2\20EyelinerPrimary\16nvim_set_hl\bapi\bvim�\1\1\0\4\0\f\0\0186\0\0\0009\0\1\0009\0\2\0)\1\0\0'\2\3\0005\3\4\0B\0\4\0016\0\0\0009\0\1\0009\0\5\0'\1\6\0005\2\b\0005\3\a\0=\3\t\0023\3\n\0=\3\v\2B\0\3\1K\0\1\0\rcallback\0\fpattern\1\0\0\1\2\0\0\6*\16ColorScheme\24nvim_create_autocmd\1\0\1\14underline\2\20EyelinerPrimary\16nvim_set_hl\bapi\bvim\0", "config", "eyeliner.nvim")
time([[Config for eyeliner.nvim]], false)
-- Config for: nvim-hlslens
time([[Config for nvim-hlslens]], true)
try_loadstring("\27LJ\2\0025\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fhlslens\frequire\0", "config", "nvim-hlslens")
time([[Config for nvim-hlslens]], false)
-- Config for: dressing.nvim
time([[Config for dressing.nvim]], true)
try_loadstring("\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rdressing\frequire\0", "config", "dressing.nvim")
time([[Config for dressing.nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\2�\b\0\0\5\0$\0C6\0\0\0009\0\1\0'\1\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\1\5\0005\2\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\a\0005\2\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\t\0005\2\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\v\0005\2\f\0B\0\3\0016\0\0\0009\0\r\0009\0\14\0'\1\15\0'\2\16\0'\3\17\0005\4\18\0B\0\5\0016\0\0\0009\0\r\0009\0\14\0'\1\15\0'\2\19\0'\3\20\0005\4\21\0B\0\5\0016\0\0\0009\0\1\0'\1\22\0B\0\2\0016\0\0\0009\0\1\0'\1\23\0B\0\2\0016\0\24\0'\1\25\0B\0\2\0029\0\26\0005\1\28\0005\2\27\0=\2\29\0015\2!\0005\3\30\0005\4\31\0=\4 \3=\3\"\2=\2#\1B\0\2\1K\0\1\0\15filesystem\19filtered_items\1\0\1\26hijack_netrw_behavior\17open_current\17hide_by_name\1\2\0\0\17node_modules\1\0\2\20hide_gitignored\2\18hide_dotfiles\1\vwindow\1\0\0\1\0\1\nwidth\3\25\nsetup\rneo-tree\frequire?:command! Sex sp | Neotree toggle current reveal_force_cwd9:command! Ex Neotree toggle current reveal_force_cwd\1\0\1\tdesc6change working directory to current file location&<Cmd>Neotree reveal_force_cwd<CR>\agp\1\0\1\tdesc\19open file tree\28<Cmd>Neotree toggle<CR>\18<leader><Tab>\6n\bset\vkeymap\1\0\2\ttext\b\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: ack.vim
time([[Config for ack.vim]], true)
try_loadstring("\27LJ\2\2K\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0'rg --vimgrep --smart-case --hidden\vackprg\6g\bvim\0", "config", "ack.vim")
time([[Config for ack.vim]], false)
-- Config for: nvim-navic
time([[Config for nvim-navic]], true)
try_loadstring("\27LJ\2\2J\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\14highlight\2\nsetup\15nvim-navic\frequire\0", "config", "nvim-navic")
time([[Config for nvim-navic]], false)
-- Config for: vim-asterisk
time([[Config for vim-asterisk]], true)
try_loadstring("\27LJ\2\2�\4\0\0\5\0\r\0A6\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\6\0'\3\a\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\b\0'\3\t\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\n\0'\3\v\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\f\0'\2\4\0'\3\5\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\f\0'\2\6\0'\3\a\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\f\0'\2\b\0'\3\t\0004\4\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\f\0'\2\n\0'\3\v\0004\4\0\0B\0\5\1K\0\1\0\6x@<Plug>(asterisk-gz#)<Cmd>lua require('hlslens').start()<CR>\ag#@<Plug>(asterisk-gz*)<Cmd>lua require('hlslens').start()<CR>\ag*?<Plug>(asterisk-z#)<Cmd>lua require('hlslens').start()<CR>\6#?<Plug>(asterisk-z*)<Cmd>lua require('hlslens').start()<CR>\6*\6n\20nvim_set_keymap\bapi\bvim\0", "config", "vim-asterisk")
time([[Config for vim-asterisk]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
try_loadstring("\27LJ\2\2�\3\0\0\4\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\3\0005\3\4\0=\3\5\2B\1\2\1K\0\1\0\15symbol_map\1\0\25\tText\b\rFunction\b\rOperator\b\nColor\b\nClass\bﴯ\vModule\b\rConstant\b\rProperty\bﰠ\vMethod\b\15EnumMember\b\tUnit\b塞\14Interface\b\vStruct\bפּ\rVariable\b\fSnippet\b\vFolder\b\nEvent\b\nField\bﰠ\18TypeParameter\5\tFile\b\nValue\b\16Constructor\b\tEnum\b\fKeyword\b\14Reference\b\1\0\2\tmode\16symbol_text\vpreset\rcodicons\tinit\flspkind\frequire\0", "config", "lspkind-nvim")
time([[Config for lspkind-nvim]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "vim-illuminate")
time([[Config for vim-illuminate]], false)
-- Config for: nvim-spectre
time([[Config for nvim-spectre]], true)
try_loadstring("\27LJ\2\2�\1\0\0\5\0\15\0\0196\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\1B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\1\v\0'\2\f\0'\3\r\0005\4\14\0B\0\5\1K\0\1\0\1\0\1\tdesc\23search and replace+<Cmd>lua require('spectre').open()<CR>\14<leader>S\6n\bset\vkeymap\bvim\19replace_engine\1\0\0\bsed\1\0\0\1\0\1\bcmd\tgsed\nsetup\fspectre\frequire\0", "config", "nvim-spectre")
time([[Config for nvim-spectre]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\2\\\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\tmode\ttabs\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2�\21\0\0\b\0b\0�\0016\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0015\3\r\0005\4\v\0005\5\t\0005\6\5\0009\a\4\0=\a\6\0069\a\a\0=\a\b\6=\6\n\5=\5\f\4=\4\14\0035\4\16\0005\5\15\0=\5\17\4=\4\18\3B\2\2\0019\2\19\1'\3\20\0B\2\2\0019\2\19\1'\3\21\0B\2\2\0019\2\19\1'\3\22\0B\2\2\0019\2\19\1'\3\17\0B\2\2\0019\2\19\1'\3\23\0B\2\2\0019\2\19\1'\3\24\0B\2\2\0016\2\25\0009\2\26\2'\3\28\0=\3\27\0026\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4 \0'\5!\0005\6\"\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4#\0'\5$\0005\6%\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4&\0'\5'\0005\6(\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4)\0'\5*\0005\6+\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4,\0'\5-\0005\6.\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4/\0'\0050\0005\0061\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\0042\0'\0053\0005\0064\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\0045\0'\0056\0005\0067\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\0048\0'\0059\0005\6:\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4;\0'\5<\0005\6=\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4>\0'\5?\0005\6@\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4A\0'\5B\0005\6C\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4D\0'\5E\0005\6F\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4G\0'\5H\0005\6I\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4J\0'\5K\0005\6L\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4M\0'\5N\0005\6O\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4P\0'\5Q\0005\6R\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4S\0'\5T\0005\6U\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4V\0'\5W\0005\6X\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4Y\0'\5Z\0005\6[\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4\\\0'\5]\0005\6^\0B\2\5\0016\2\25\0009\2\29\0029\2\30\2'\3\31\0'\4_\0'\5`\0005\6a\0B\2\5\1K\0\1\0\1\0\1\tdesc\16search text!<Cmd>Telescope live_grep<CR>\14<leader>x\1\0\1\tdesc\19search windows\31<Cmd>Telescope windows<CR>\14<leader>w\1\0\1\tdesc\30search treesitter symbols\"<Cmd>Telescope treesitter<CR>\14<leader>s\1\0\1\tdesc\31search current buffer text1<Cmd>Telescope current_buffer_fuzzy_find<CR>\14<leader>r\1\0\1\tdesc\25search quickfix list <Cmd>Telescope quickfix<CR>\14<leader>q\1\0\1\tdesc,search messages handled by Noice plugin\29<Cmd>Noice telescope<CR>\14<leader>n\1\0\1\tdesc\29search markdown headings\31<Cmd>Telescope heading<CR>\14<leader>m\1\0\1\tdesc\29search lsp document tree,<Cmd>Telescope lsp_document_symbols<CR>\15<leader>ls\1\0\1\tdesc\30search lsp code reference&<Cmd>Telescope lsp_references<CR>\15<leader>lr\1\0\1\tdesc\30search lsp outgoing calls*<Cmd>Telescope lsp_outgoing_calls<CR>\15<leader>lo\1\0\1\tdesc\30search lsp incoming calls*<Cmd>Telescope lsp_incoming_calls<CR>\15<leader>li\1\0\1\tdesc\27search lsp diagnostics#<Cmd>Telescope diagnostics<CR>\15<leader>ld\1\0\1\tdesc\24search key mappings\31<Cmd>Telescope keymaps<CR>\14<leader>k\1\0\1\tdesc\20search builtins\31<Cmd>Telescope builtin<CR>\14<leader>i\1\0\1\tdesc\16search help!<Cmd>Telescope help_tags<CR>\14<leader>h\1\0\1\tdesc\25search changed files%<Cmd>Telescope changed_files<CR>\14<leader>g\1\0\1\tdesc\17search files.<Cmd>Telescope find_files hidden=true<CR>\a;f\1\0\1\tdesc\23search Ex commands <Cmd>Telescope commands<CR>\15<leader>ex\1\0\1\tdesc\18search emojis\29<Cmd>Telescope emoji<CR>\15<leader>ej\1\0\1\tdesc\17search TODOs\27<Cmd>TodoTelescope<CR>\14<leader>d\1\0\1\tdesc\24search colorschemes#<Cmd>Telescope colorscheme<CR>\14<leader>c\1\0\1\tdesc\19search buffers\31<Cmd>Telescope buffers<CR>\a;b\6n\bset\vkeymap\tmain(telescope_changed_files_base_branch\6g\bvim\fwindows\14ui-select\bfzf\nemoji\18changed_files\19load_extension\15extensions\fheading\1\0\0\1\0\1\15treesitter\2\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\n<C-o>\28send_selected_to_qflist\n<esc>\1\0\0\nclose\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\2:\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0\27colorscheme catppuccin\bcmd\bvim\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\2�\t\0\0\4\0:\0=6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\5\0005\3\4\0=\3\6\0025\3\a\0=\3\b\0025\3\t\0=\3\n\0025\3\v\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\0025\3\27\0=\3\28\0025\3\29\0=\3\30\0025\3\31\0=\3 \0025\3!\0=\3\"\0025\3#\0=\3$\0025\3%\0=\3&\0025\3'\0=\3(\0025\3)\0=\3*\0025\3+\0=\3,\0025\3-\0=\3.\0025\3/\0=\0030\0025\0031\0=\0032\0025\0033\0=\0034\0025\0035\0=\0036\0025\0037\0=\0038\2=\0029\1B\0\2\1K\0\1\0\fsymbols\18TypeParameter\1\0\2\ahl\15GruvboxRed\ticon\t𝙏\rOperator\1\0\2\ahl\15TSOperator\ticon\6+\nEvent\1\0\2\ahl\17GruvboxGreen\ticon\t🗲\vStruct\1\0\2\ahl\17GruvboxGreen\ticon\t𝓢\15EnumMember\1\0\2\ahl\15GruvboxRed\ticon\b\tNull\1\0\2\ahl\17GruvboxGreen\ticon\tNULL\bKey\1\0\2\ahl\17GruvboxGreen\ticon\t🔐\vObject\1\0\2\ahl\17GruvboxGreen\ticon\b⦿\nArray\1\0\2\ahl\18GruvboxPurple\ticon\b\fBoolean\1\0\2\ahl\14TSBoolean\ticon\b⊨\vNumber\1\0\2\ahl\rTSNumber\ticon\6#\vString\1\0\2\ahl\16GruvboxGray\ticon\t𝓐\rConstant\1\0\2\ahl\18GruvboxPurple\ticon\b\rVariable\1\0\2\ahl\18GruvboxPurple\ticon\b\rFunction\1\0\2\ahl\18GruvboxYellow\ticon\b\14Interface\1\0\2\ahl\17GruvboxGreen\ticon\bﰮ\tEnum\1\0\2\ahl\17GruvboxGreen\ticon\bℰ\16Constructor\1\0\2\ahl\18TSConstructor\ticon\b\nField\1\0\2\ahl\15GruvboxRed\ticon\b\rProperty\1\0\2\ahl\18GruvboxOrange\ticon\b\vMethod\1\0\2\ahl\18GruvboxOrange\ticon\aƒ\nClass\1\0\2\ahl\17GruvboxGreen\ticon\t𝓒\fPackage\1\0\2\ahl\16GruvboxBlue\ticon\b\14Namespace\1\0\2\ahl\16GruvboxBlue\ticon\b\vModule\1\0\2\ahl\16GruvboxBlue\ticon\b\tFile\1\0\0\1\0\2\ahl\16GruvboxAqua\ticon\b\1\0\4\15auto_close\1\27highlight_hovered_item\2\rposition\tleft\nwidth\3\15\nsetup\20symbols-outline\frequire\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType qf ++once lua require("packer.load")({'nvim-bqf'}, { ft = "qf" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'noice.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
