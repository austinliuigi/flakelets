{
  perSystem = {
    pkgs,
    config,
    ...
  }: {
    devShells = {
      default = pkgs.mkShell {
        packages = [
          pkgs.clang-tools
          pkgs.cppcheck
          pkgs.valgrind
          # ... <- add nix packages here
        ];
      };
    };
  };
}
