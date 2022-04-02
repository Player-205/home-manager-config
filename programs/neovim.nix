pkgs: enabled:
{
  enable = enabled;
  coc.enable = true;
  coc.settings = import ./neovim/coc-settings.nix;
  extraConfig = builtins.readFile ./neovim/config.vim;
  plugins = import ./neovim/plugins.nix pkgs;
}
