let
  pkgs = import ../nix/pkgs.nix;
in with pkgs;
  with ocamlPackages;
  buildDunePackage {
    pname = "pl-judge-ocaml";
    version = "0.1.0.0";
    buildInputs = [
      alcotest
      utop
    ];
  }
