{ pkgs }:

{
  fromBindist = { url, sha256, ncursesVersion ? "6" }:
    pkgs.callPackage ./artifact.nix {} {
      bindistTarball = pkgs.fetchurl {
        inherit url sha256;
      };
      inherit ncursesVersion;
    };
}
