{
  description = "A Home Manager flake";

  inputs = {
    home-manager.url = "github:nix-community/home-manager";
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { home-manager, ...}: let 
    system = "x86_64-linux";
    username = "player205";
  in {
    homeConfigurations = {
      ${username} = home-manager.lib.homeManagerConfiguration {
        inherit system username;
        homeDirectory = "/home/${username}";
        stateVersion = "22.05";       
        configuration.imports = [ ./home.nix ];
      };
    };
  };
}
