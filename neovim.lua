-- return {
-- 	{
-- 		"vague2k/vague.nvim",
-- 		lazy = false,
-- 		priority = 1000,
-- 		config = function()
-- 			require("vague").setup({
-- 				bufferline = true,
-- 			})
-- 			vim.cmd("colorscheme vague")
--
-- 			-- 🌙 Apply Monokai-style tabline highlights
-- 			local hl = vim.api.nvim_set_hl
-- 			local colors = {
-- 				hex_0e091d = "#000000", -- main background (was dark indigo)
-- 				hex_061F23 = "#1A1A1A", -- secondary background (was dark teal)
-- 				hex_092F34 = "#2E2E2E", -- panel/hover (was dark cyan-blue)
-- 				hex_8CB319 = "#FFFFFF", -- accent/success (was lime olive)
-- 				hex_9147a8 = "#B0B0B0", -- highlight (was purple)
-- 			}
--
-- 			-- Tabline highlights
-- 			hl(0, "TabLine", { fg = colors.hex_9147a8, bg = colors.hex_0e091d })
-- 			hl(0, "TabLineFill", { bg = colors.hex_0e091d })
-- 			hl(0, "TabLineSel", { fg = colors.hex_8CB319, bg = colors.hex_0e091d, bold = true })
--
-- 			-- Bufferline highlights
-- 			hl(0, "BufferLineBackground", { fg = colors.hex_9147a8, bg = colors.hex_0e091d })
-- 			hl(0, "BufferLineFill", { bg = colors.hex_0e091d })
-- 			hl(0, "BufferLineBufferSelected", { fg = colors.hex_8CB319, bg = colors.hex_0e091d, bold = true })
-- 			hl(0, "BufferLineBufferVisible", { fg = colors.hex_8CB319, bg = colors.hex_0e091d })
-- 		end,
-- 	},
-- }

return {
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		opts = {
			style = "night",
			on_colors = function(colors)
				-- override base backgrounds if you want
				colors.bg = "#000000"
				colors.bg_dark = "#000000"
			end,
			on_highlights = function(hl, colors)
				-- TABLINE
				hl.TabLine = { fg = "#B0B0B0", bg = "#000000" }
				hl.TabLineFill = { bg = "#000000" }
				hl.TabLineSel = { fg = "#FFFFFF", bg = "#000000", bold = true }

				-- BUFFERLINE
				hl.BufferLineFill = { bg = "#000000" }
				hl.BufferLineBackground = { fg = "#B0B0B0", bg = "#000000" }
				hl.BufferLineBufferSelected = {
					fg = "#FFFFFF",
					bg = "#000000",
					bold = true,
				}
				hl.BufferLineBufferVisible = {
					fg = "#FFFFFF",
					bg = "#000000",
				}
			end,
		},
	},

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "tokyonight-night",
		},
	},
}
--

-- return {
-- 	{
-- 		"metalelf0/black-metal-theme-neovim",
-- 		lazy = false,
-- 		priority = 1000,
-- 		config = function()
-- 			require("black-metal").setup({
-- 				theme = "gorgoroth", --(these are variations pick whatever you like)bathory, burzum, dark-funeral, darkthrone, emperor, gorgoroth, immortal, impaled-nazarene, khold, marduk, mayhem, nile, taake, thyrfing, venom, windir
-- 				variant = "dark",
-- 			})
-- 			require("black-metal").load()
-- 		end,
-- 	},
-- }
