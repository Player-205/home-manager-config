{ config, pkgs, ... }:

{
  home.username = "player205";
  home.homeDirectory = "/home/player205";
  home.stateVersion = "22.05";
  nixpkgs.config = { allowUnfree = true; };

  home.packages = with pkgs; [
    jgmenu
    idris2
    opam
    firefox
    discord
  ];

  programs.home-manager.enable = true;
  programs = {
    vscode = import ./programs/vscode.nix pkgs true;
    neovim = import ./programs/neovim.nix pkgs true;
    direnv = import ./programs/direnv.nix true;
  };

  
 services = {};
 
}

