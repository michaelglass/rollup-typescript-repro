# this flake installs all tools required for the dev env
{
  description = "rollup repro dev env";

  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        assertVersion = version: pkg:
          (assert (pkgs.lib.assertMsg
            (builtins.toString pkg.version == version) ''
              Expecting version of ${pkg.name} to be ${version} but got ${pkg.version};
            '');
            pkg);
        pkgs = import nixpkgs {
          system = system;
          config.allowUnfree = true;
        };

      in {
        formatter = pkgs.nixpkgs-fmt;
        devShells.default = pkgs.mkShell {
          packages = with pkgs;
            [
              (assertVersion
                (nixpkgs.lib.strings.fileContents "${self}/.node-version")
                nodejs_22)
            ];
        };
      });
}
