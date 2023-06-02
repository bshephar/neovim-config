-- set colorscheme to nightfly with protected call
-- in case it isn't installed
--local status, _ = pcall(vim.cmd, "colorscheme catppuccin")
--require("catppuccin").setup({
--	flavour = "mocha",
--})
-- require("catppuccin").load()

-- onedark
local status, _ = pcall(vim.cmd, "colorscheme onedark")
 require('onedark').setup  {
    -- Main options --
    style = 'darker', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = true,  -- Show/hide background
    term_colors = false, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- toggle theme style ---
    toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Lualine options --
    lualine = {
        transparent = false, -- lualine center bar transparency
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}
require("onedark").load()
--

-- local status, _ = pcall(vim.cmd, "colorscheme oh-lucy")
--require("oh-lucy").setup({
--	style = "deep",
--})
-- require("oh-lucy").load()
--

--local status, _ = pcall(vim.cmd, "colorscheme tokyonight")
--
--require("tokyonight").setup({
--  -- your configuration comes here
--  -- or leave it empty to use the default settings
--  style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
--  light_style = "day", -- The theme is used when the background is set to light
--  transparent = true, -- Enable this to disable setting the background color
--  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
--  styles = {
--    -- Style to be applied to different syntax groups
--    -- Value is any valid attr-list value for `:help nvim_set_hl`
--    comments = { italic = true },
--    keywords = { italic = true },
--    functions = {},
--    variables = {},
--    -- Background styles. Can be "dark", "transparent" or "normal"
--    sidebars = "dark", -- style for sidebars, see below
--    floats = "dark", -- style for floating windows
--  },
--  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
--  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
--  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
--  dim_inactive = false, -- dims inactive windows
--  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
--
--  --- You can override specific color groups to use other groups or a hex color
--  --- function will be called with a ColorScheme table
--  ---@param colors ColorScheme
--  on_colors = function(colors) end,
--
--  --- You can override specific highlights to use other groups or a hex color
--  --- function will be called with a Highlights and ColorScheme table
--  ---@param highlights Highlights
--  ---@param colors ColorScheme
--  on_highlights = function(highlights, colors) end,
--})


if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end
