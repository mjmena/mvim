{
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
      flavour = "macchiato";
    };
  };
  plugins.treesitter.enable = true;

  plugins = {
    lsp-format.enable = true;
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
      };
    };
  };

  plugins.which-key.enable = true;

}
