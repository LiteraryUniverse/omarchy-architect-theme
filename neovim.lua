-- Architect — Neovim
-- Art Deco: pure obsidian, platinum, champagne gold, chrome silver, LU pink
-- Uses the aether.nvim plugin with custom architectural dark palette

return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background — pure obsidian / blueprint paper inverted
                bg          = "#0E0D0D",
                bg_dark     = "#080808",
                bg_highlight = "#2A2820",

                -- Foreground — warm platinum
                fg          = "#EDE8E0",
                fg_dark     = "#C8C0B4",
                comment     = "#5A5850",

                -- Accent colors — Art Deco architectural palette
                -- red: errors — signal red
                red         = "#D94040",
                -- orange: constants — warm amber
                orange      = "#E0A030",
                -- yellow: types, warnings — champagne gold (structural)
                yellow      = "#C9A84C",
                -- green: strings — chrome silver (cool, precise)
                green       = "#A8B8C8",
                -- cyan: parameters — lighter chrome
                cyan        = "#C0D0E0",
                -- blue: functions — LU secondary blue
                blue        = "#0575BC",
                -- purple: keywords — LU pink (the neon sign)
                purple      = "#FF83D5",
                -- magenta: special — LU magenta
                magenta     = "#C12577",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
