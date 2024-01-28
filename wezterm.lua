local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
    config.default_prog = {'wsl'}
end

config.font = wezterm.font 'Ubuntu Mono'
config.font_size = 11.0
config.color_scheme = 'Catppuccin Mocha'

return config
