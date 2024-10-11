{
  lib,
  pkgs,
  ...
}: {
  globals.mapleader = " ";

  keymaps = [
    {
      action = "<cmd>Oil<CR>";
      key = "-";
    }
  ];

  opts = {
    number = true;
    relativenumber = true;
    tabstop = 2;
    softtabstop = 2;
    expandtab = true;
    smartindent = true;
    shiftwidth = 2;
  };

  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "mocha";
      integrations.treesitter = true;
    };
  };

  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        nixd.enable = true;
        nushell.enable = true;
        rust-analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
      };
    };
  };

  plugins = {
    conform-nvim = {
      enable = true;
      settings = {
        notify_on_error = true;
        notify_no_formatters = true;
        formatters_by_ft = {
          nix = [
            "alejandra"
          ];
          rust = [
            "rustfmt"
          ];
        };
        format_on_save = {timeout_ms = 500;};
        formatters = {
          alejandra.command = lib.getExe pkgs.alejandra;
          rustfmt.command = lib.getExe pkgs.rustfmt;
        };
      };
    };
  };

  plugins.treesitter = {
    enable = true;
    settings = {
      indent.enable = true;
      highlight.enable = true;
    };
  };

  plugins.which-key.enable = true;
  plugins.lualine.enable = true;
  plugins.oil.enable = true;
}