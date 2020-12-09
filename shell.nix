let
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/cd63096d6d887d689543a0b97743d28995bc9bc3.tar.gz") {};
  poetryEnv = pkgs.poetry2nix.mkPoetryEnv {                                 
    projectDir = ./.;
  };
in
pkgs.mkShell {
  buildInputs = [
    poetryEnv
  ];
}
