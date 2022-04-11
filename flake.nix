{
  description = "A Home Manager flake";

  inputs = {
    home-manager.url = "github:nix-community/home-manager";
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, home-manager, nixpkgs, flake-utils}:  
  let 
    system = "x86_64-linux";
    username = "player205";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    homeConfigurations = {
      ${username} = home-manager.lib.homeManagerConfiguration {
        inherit system username;
        homeDirectory = "/home/${username}";
        stateVersion = "22.05";       
        configuration = {
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
 
        };
      };
    };
  };
}
