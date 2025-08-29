{
  description = "JavaScript flake.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux"; 
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [

	nodejs_latest
	nodePackages.yarn
	nodePackages.live-server
	vscode-langservers-extracted

        ];

        shellHook = ''
          echo "JS ENV Loaded."
        '';
      };
    };
}


