{
  inputs.nixpkgs.url = "github:nixos/nixpkgs";
  outputs = { self, nixpkgs }: {
    packages = {
      "x86_64-linux" =
        let
          pkgs = import nixpkgs { system = "x86_64-linux"; };
        in import ./releases.nix { inherit pkgs; };
    };
  };
}
