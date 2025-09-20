# Development shell for python projects using nix-built python packages.
{inputs, ...}: {
  perSystem = {
    pkgs,
    system,
    ...
  }: {
    devShells = let
      PYTHON_VERSION = "3.10.1";
      pkgs-python = inputs.nixpkgs-python.packages.${system};
    in {
      default = pkgs.mkShell {
        packages = [
          (
            pkgs-python.${PYTHON_VERSION}.withPackages (
              ps: [
                # ... <- add python packages here
              ]
            )
          )
          # ... <- add nix packages here
        ];
      };
    };
  };
}
