{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    pkg-config
  ];

  buildInputs = with pkgs; [
    fontconfig
    freetype
    libxcb
    libxkbcommon
  ];

  shellHook = ''
    export LD_LIBRARY_PATH=${pkgs.lib.makeLibraryPath [
      pkgs.fontconfig
      pkgs.freetype
      pkgs.libxcb
      pkgs.libxkbcommon
    ]}:$LD_LIBRARY_PATH
  '';
}
