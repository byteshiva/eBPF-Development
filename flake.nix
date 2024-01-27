# flake.nix

{
  description = "ebpf Development - Stage by Stage";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    devShell.x86_64-linux =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in pkgs.mkShell {
        buildInputs = [
          pkgs.bcc
          pkgs.libbpf
          pkgs.clang
          pkgs.python3
          pkgs.python311Packages.pip
          pkgs.virtualenv
        ];

        shellHook = ''
          echo "Entering the development environment!"
        '';
      };

    devShells = rec {
      default = self.devShell.x86_64-linux;
    };
  };
}
