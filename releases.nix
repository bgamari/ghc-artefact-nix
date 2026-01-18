{ nixpkgs ? (import <nixpkgs> {}) }:
let
  fromBindist = { url, sha256, ncursesVersion ? "6" }:
    nixpkgs.callPackage ./artifact.nix {} {
      bindistTarball = nixpkgs.fetchurl {
        inherit url sha256;
      };
      inherit ncursesVersion;
    };
  downloads = "https://downloads.haskell.org/ghc";
in
{

  ghc_8_2_2 = fromBindist {
    url = "${downloads}/8.2.2/ghc-8.2.2-x86_64-deb8-linux.tar.xz";
    sha256 = "sha256:0ahv26304pqi3dm7i78si4pxwvg5f5dc2jwsfgvcrhcx5g30bqj8";
    ncursesVersion = "5";
  };

  ghc_8_6_5 = fromBindist {
    url = "${downloads}/8.6.5/ghc-8.6.5-x86_64-deb8-linux.tar.xz";
    sha256 = "sha256:01wiwjp3hjd8jv54k5w5ygfrdik070r8w94sxg9f8pq6m45gs6f4";
    ncursesVersion = "5";
  };

  ghc_8_8_2_rc1 = fromBindist {
    url = "${downloads}/8.8.2-rc1/ghc-8.8.1.20191211-x86_64-fedora27-linux.tar.xz";
    sha256 = "122z44c7dhl01ixdxkz01p9s5v9z4zds6h8jjsf9y5qal1p6pmzl";
  };

  ghc_8_8_4 = fromBindist {
    url = "${downloads}/8.8.4/ghc-8.8.4-x86_64-fedora27-linux.tar.xz";
    sha256 = "sha256:1nqmnlsbm20896ppd58rg0g55917vii2zq1safnlprq3mbw3fbpk";
  };

  ghc_8_10_1_alpha1 = fromBindist {
    url = "${downloads}/8.10.1-alpha1/ghc-8.10.0.20191121-x86_64-fedora27-linux.tar.xz";
    sha256 = "1a20mf89fhm9cr4m3hd38fylhfjr872nhv067zcbyqf99a93nby8";
  };

  ghc_8_10_1_alpha2 = fromBindist {
    url = "${downloads}/8.10.1-alpha2/ghc-8.10.0.20191210-x86_64-fedora27-linux.tar.xz";
    sha256 = "1gvr12rng3dib93zaprnl301k2pzwpc036b1piy5s851qw99vjlr";
  };

  ghc_8_10_7 = fromBindist {
    url = "${downloads}/8.10.7/ghc-8.10.7-x86_64-fedora27-linux.tar.xz";
    sha256 = "sha256:0wsv3smj52jwwcp9pcl39vpfb5p1smv9jp768a04l193k826gvdn";
  };

  ghc_9_2_1 = fromBindist {
    url = "${downloads}/9.2.1/ghc-9.2.1-x86_64-fedora27-linux.tar.xz";
    sha256 = "sha256:0aakbm7haqgaqg3wy1slj3h8r4x0zvivmb4d84px8v80ckzd2z73";
  };
}
