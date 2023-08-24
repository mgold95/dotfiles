local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
    config.default_prog = {'C:/msys64/msys2_shell.cmd', '-defterm', '-here', '-no-start', '-mingw64'}
end

config.font = wezterm.font 'Ubuntu Mono'
config.font_size = 9.0
config.color_scheme = 'Bamboo'

return config
