{ pkgs, ... }: {
  languages.javascript.enable = true;
  packages = with pkgs; [
  nodePackages.live-server
  typescript-language-server
  vscode-langservers-extracted
  ];
}
  

