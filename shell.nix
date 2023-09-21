let
  pkgs = import <nixpkgs> { };
  tex = pkgs.texlive.combine {
    inherit (pkgs.texlive) scheme-medium moderncv fontawesome fontawesome5
      multirow
      arydshln;
  };
in
pkgs.mkShell {
  buildInputs = [ tex ];
}
