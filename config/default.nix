{
  lib,
  pkgs,
  ...
}: {
  globals.mapleader = " ";

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
    };
  };

  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        nixd.enable = true;
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
        };
        format_on_save = {timeout_ms = 500;};
        formatters = {
          alejandra.command = lib.getExe pkgs.alejandra;
        };
      };
    };
  };

  plugins.treesitter.enable = true;
  plugins.which-key.enable = true;
  plugins.lualine.enable = true;
}
