{ config, pkgs, ... }:

{
  home.stateVersion = "22.05";
  nixpkgs.config = { allowUnfree = true; };

  home.packages = with pkgs; [
  ];

  programs.home-manager.enable = true;
  programs = {
    vscode = import ./programs/vscode.nix pkgs true;
    neovim = import ./programs/neovim.nix pkgs true;
    direnv = import ./programs/direnv.nix true;
  };

  
 services = {};
 
}

