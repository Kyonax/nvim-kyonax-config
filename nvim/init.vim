"Functional Plugins
source ~/AppData/Local/nvim/vim_plugs/plugins.vim
source ~/AppData/Local/nvim/general/settings.vim
source ~/AppData/Local/nvim/keys/mappings.vim
source ~/AppData/Local/nvim/plug-config/coc.vim
"Style Plugins
source ~/AppData/Local/nvim/themes/airline.vim
source ~/AppData/Local/nvim/plug-config/rainbow.vim
source ~/AppData/Local/nvim/plug-config/start-screen.vim
"Git Plugins
source ~/AppData/Local/nvim/plug-config/signify.vim
"Sneak
source ~/AppData/Local/nvim/plug-config/sneak.vim
"QuickScope
source ~/AppData/Local/nvim/plug-config/quickscope.vim
"WhichKey
source ~/AppData/Local/nvim/keys/which-key.vim
"Lua Plugins
luafile ~/AppData/Local/nvim/lua/plug-colorizer.lua

"Init Codes for NVIM

"Telescope Addons
lua << EOF
require('telescope').setup{
    defaults = {
        prompt_prefix = "$ "
    
    }
}
require('telescope').load_extension('fzf')
EOF
