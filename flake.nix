{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    utils = {
      url = "github:numtide/flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixos-generators = {
      url = "github:nix-community/nixos-generators";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = {
    self,
    ...
  }: with self.inputs; {
    packages = utils.lib.eachDefaultSystemMap (system: let
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [./configuration.nix];
      formats = ["do" "docker" "qcow" "vm" "vm-bootloader" "virtualbox" "vagrant-virtualbox"];
    in builtins.listToAttrs (builtins.map (format: {
          name = format;
          value = nixos-generators.nixosGenerate {inherit pkgs modules format;};
        })
        formats));
  };
}
