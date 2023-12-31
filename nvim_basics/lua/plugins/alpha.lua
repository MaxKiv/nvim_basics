return {
  -- {
  --   "goolord/alpha-nvim",
  --   event = "VimEnter",
  --   config = function()
  --
  --     local status_ok, alpha = pcall(require, "alpha")
  --     if not status_ok then
  --       return
  --     end
  --
  --     local dashboard = require "alpha.themes.dashboard"
  --     local function header()
  --       return {
  --         [[HHHHHHHHH     HHHHHHHHH  iiii       KKKKKKKKK    KKKKKKK  iiii              d::::::d            d::::::d                 ]],
  --         [[H:::::::H     H:::::::H i::::i      K:::::::K    K:::::K i::::i             d::::::d            d::::::d                 ]],
  --         [[H:::::::H     H:::::::H  iiii       K:::::::K    K:::::K  iiii              d::::::d            d::::::d                 ]],
  --         [[HH::::::H     H::::::HH             K:::::::K   K::::::K                    d:::::d             d:::::d                  ]],
  --         [[  H:::::H     H:::::H  iiiiiii      KK::::::K  K:::::KKKiiiiiii     ddddddddd:::::d     ddddddddd:::::d    ooooooooooo   ]],
  --         [[  H:::::H     H:::::H  i:::::i        K:::::K K:::::K   i:::::i   dd::::::::::::::d   dd::::::::::::::d  oo:::::::::::oo ]],
  --         [[  H::::::HHHHH::::::H   i::::i        K::::::K:::::K     i::::i  d::::::::::::::::d  d::::::::::::::::d o:::::::::::::::o]],
  --         [[  H:::::::::::::::::H   i::::i        K:::::::::::K      i::::i d:::::::ddddd:::::d d:::::::ddddd:::::d o:::::ooooo:::::o]],
  --         [[  H:::::::::::::::::H   i::::i        K:::::::::::K      i::::i d::::::d    d:::::d d::::::d    d:::::d o::::o     o::::o]],
  --         [[  H::::::HHHHH::::::H   i::::i        K::::::K:::::K     i::::i d:::::d     d:::::d d:::::d     d:::::d o::::o     o::::o]],
  --         [[  H:::::H     H:::::H   i::::i        K:::::K K:::::K    i::::i d:::::d     d:::::d d:::::d     d:::::d o::::o     o::::o]],
  --         [[  H:::::H     H:::::H   i::::i      KK::::::K  K:::::KKK i::::i d:::::d     d:::::d d:::::d     d:::::d o::::o     o::::o]],
  --         [[HH::::::H     H::::::HHi::::::i     K:::::::K   K::::::Ki::::::id::::::ddddd::::::ddd::::::ddddd::::::ddo:::::ooooo:::::o]],
  --         [[H:::::::H     H:::::::Hi::::::i     K:::::::K    K:::::Ki::::::i d:::::::::::::::::d d:::::::::::::::::do:::::::::::::::o]],
  --         [[H:::::::H     H:::::::Hi::::::i     K:::::::K    K:::::Ki::::::i  d:::::::::ddd::::d  d:::::::::ddd::::d oo:::::::::::oo ]],
  --         [[HHHHHHHHH     HHHHHHHHHiiiiiiii     KKKKKKKKK    KKKKKKKiiiiiiii   ddddddddd   ddddd   ddddddddd   ddddd   ooooooooooo   ]],
  --       }
  --     end
  --
  --     dashboard.section.header.val = header()
  --
  --     dashboard.section.buttons.val = {
  --       dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  --       dashboard.button("c", "  Configuration", ":Telescope find_files cwd=~/.config/nvim/<CR>"),
  --       dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
  --     }
  --
  --     local function footer()
  --       -- Number of plugins
  --       local stats = require("lazy").stats()
  --       local plugins_text = " ⚡ Neovim loaded " .. stats.count .. " plugins"
  --       -- Quote
  --       local fortune = require "alpha.fortune"
  --       local quote = table.concat(fortune(), "\n")
  --       return plugins_text .. "\n" .. quote
  --     end
  --
  --     dashboard.section.footer.val = footer()
  --
  --     dashboard.section.footer.opts.hl = "Constant"
  --     dashboard.section.header.opts.hl = "Include"
  --     dashboard.section.buttons.opts.hl = "Function"
  --     dashboard.section.buttons.opts.hl_shortcut = "Type"
  --     dashboard.opts.opts.noautocmd = true
  --
  --     alpha.setup(dashboard.opts)
  --
  --   end
  -- },
}

--return {
--  {
--    "echasnovski/mini.starter",
--    version = false, -- wait till new 0.7.0 release to put it back on semver
--    event = "VimEnter",
--    opts = function()
--      local logo = table.concat({
--        [[HHHHHHHHH     HHHHHHHHH  iiii       KKKKKKKKK    KKKKKKK  iiii              d::::::d            d::::::d                 ]],
--        [[H:::::::H     H:::::::H i::::i      K:::::::K    K:::::K i::::i             d::::::d            d::::::d                 ]],
--        [[H:::::::H     H:::::::H  iiii       K:::::::K    K:::::K  iiii              d::::::d            d::::::d                 ]],
--        [[HH::::::H     H::::::HH             K:::::::K   K::::::K                    d:::::d             d:::::d                  ]],
--        [[  H:::::H     H:::::H  iiiiiii      KK::::::K  K:::::KKKiiiiiii     ddddddddd:::::d     ddddddddd:::::d    ooooooooooo   ]],
--        [[  H:::::H     H:::::H  i:::::i        K:::::K K:::::K   i:::::i   dd::::::::::::::d   dd::::::::::::::d  oo:::::::::::oo ]],
--        [[  H::::::HHHHH::::::H   i::::i        K::::::K:::::K     i::::i  d::::::::::::::::d  d::::::::::::::::d o:::::::::::::::o]],
--        [[  H:::::::::::::::::H   i::::i        K:::::::::::K      i::::i d:::::::ddddd:::::d d:::::::ddddd:::::d o:::::ooooo:::::o]],
--        [[  H:::::::::::::::::H   i::::i        K:::::::::::K      i::::i d::::::d    d:::::d d::::::d    d:::::d o::::o     o::::o]],
--        [[  H::::::HHHHH::::::H   i::::i        K::::::K:::::K     i::::i d:::::d     d:::::d d:::::d     d:::::d o::::o     o::::o]],
--        [[  H:::::H     H:::::H   i::::i        K:::::K K:::::K    i::::i d:::::d     d:::::d d:::::d     d:::::d o::::o     o::::o]],
--        [[  H:::::H     H:::::H   i::::i      KK::::::K  K:::::KKK i::::i d:::::d     d:::::d d:::::d     d:::::d o::::o     o::::o]],
--        [[HH::::::H     H::::::HHi::::::i     K:::::::K   K::::::Ki::::::id::::::ddddd::::::ddd::::::ddddd::::::ddo:::::ooooo:::::o]],
--        [[H:::::::H     H:::::::Hi::::::i     K:::::::K    K:::::Ki::::::i d:::::::::::::::::d d:::::::::::::::::do:::::::::::::::o]],
--        [[H:::::::H     H:::::::Hi::::::i     K:::::::K    K:::::Ki::::::i  d:::::::::ddd::::d  d:::::::::ddd::::d oo:::::::::::oo ]],
--        [[HHHHHHHHH     HHHHHHHHHiiiiiiii     KKKKKKKKK    KKKKKKKiiiiiiii   ddddddddd   ddddd   ddddddddd   ddddd   ooooooooooo   ]],
--      }, "\n")
--      local pad = string.rep(" ", 22)
--      local new_section = function(name, action, section)
--        return { name = name, action = action, section = pad .. section }
--      end

--      local starter = require("mini.starter")
--      --stylua: ignore
--      local config = {
--        evaluate_single = true,
--        header = logo,
--        items = {
--          new_section("Find file", "Telescope find_files", "Telescope"),
--          new_section("Recent files", "Telescope oldfiles", "Telescope"),
--          new_section("Grep text", "Telescope live_grep", "Telescope"),
--          new_section("init.lua", "e $MYVIMRC", "Config"),
--          new_section("Lazy", "Lazy", "Config"),
--          new_section("New file", "ene | startinsert", "Built-in"),
--          new_section("Quit", "qa", "Built-in"),
--        },
--        content_hooks = {
--          starter.gen_hook.adding_bullet(pad .. "░ ", false),
--          starter.gen_hook.aligning("center", "center"),
--        },
--      }
--      return config
--    end,
--    config = function(_, config)
--      -- close Lazy and re-open when starter is ready
--      if vim.o.filetype == "lazy" then
--        vim.cmd.close()
--        vim.api.nvim_create_autocmd("User", {
--          pattern = "MiniStarterOpened",
--          callback = function()
--            require("lazy").show()
--          end,
--        })
--      end

--      local starter = require("mini.starter")
--      starter.setup(config)

--      vim.api.nvim_create_autocmd("User", {
--        pattern = "LazyVimStarted",
--        callback = function()
--          local stats = require("lazy").stats()
--          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
--          local pad_footer = string.rep(" ", 8)
--          starter.config.footer = pad_footer .. "⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"
--          pcall(starter.refresh)
--        end,
--      })
--    end,
--  },
--}
