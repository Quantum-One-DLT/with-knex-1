let pkgs = import <nixpkgs> {};

in pkgs.mkShell rec {
  name = "webdev";
  
  buildInputs = with pkgs; [
    nodejs-18_x
    postgresql
    (yarn.override { nodejs = nodejs-18_x; })
  ];
}