{
  perSystem = {
    pkgs,
    config,
    ...
  }: {
    devShells = {
      default = pkgs.mkShellNoCC {
        packages = with pkgs; [
          nodejs_23
          tailwindcss-language-server
          # ... add nix packages here
        ];
      };
    };
  };
}
