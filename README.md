# Nixlet

[![main](https://github.com/fnctl/nixlet/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/fnctl/nixlet/actions/workflows/main.yml)

Builds NixOS images for various providers. Mostly as an example.

See `configuration.nix` for the base configuration used.


```
❯ nix flake show
git+file:///Users/jake/src/fnctl/nixlet
└───packages
    ├───do
    │   ├───aarch64-darwin: package 'digital-ocean-image'
    │   ├───aarch64-linux: package 'digital-ocean-image'
    │   ├───i686-linux: package 'digital-ocean-image'
    │   ├───x86_64-darwin: package 'digital-ocean-image'
    │   └───x86_64-linux: package 'digital-ocean-image'
    ├───docker
    │   ├───aarch64-darwin: package 'tarball'
    │   ├───aarch64-linux: package 'tarball'
    │   ├───i686-linux: package 'tarball'
    │   ├───x86_64-darwin: package 'tarball'
    │   └───x86_64-linux: package 'tarball'
    ├───qcow
    │   ├───aarch64-darwin: package 'nixos-disk-image'
    │   ├───aarch64-linux: package 'nixos-disk-image'
    │   ├───i686-linux: package 'nixos-disk-image'
    │   ├───x86_64-darwin: package 'nixos-disk-image'
    │   └───x86_64-linux: package 'nixos-disk-image'
    ├───vagrant-virtualbox
    │   ├───aarch64-darwin: package 'virtualbox-vagrant.box'
    │   ├───aarch64-linux: package 'virtualbox-vagrant.box'
    │   ├───i686-linux: package 'virtualbox-vagrant.box'
    │   ├───x86_64-darwin: package 'virtualbox-vagrant.box'
    │   └───x86_64-linux: package 'virtualbox-vagrant.box'
    ├───virtualbox
    │   ├───aarch64-darwin: package 'nixos-ova-22.11.20220706.a5c867d-aarch64-darwin'
    │   ├───aarch64-linux: package 'nixos-ova-22.11.20220706.a5c867d-aarch64-linux'
    │   ├───i686-linux: package 'nixos-ova-22.11.20220706.a5c867d-i686-linux'
    │   ├───x86_64-darwin: package 'nixos-ova-22.11.20220706.a5c867d-x86_64-darwin'
    │   └───x86_64-linux: package 'nixos-ova-22.11.20220706.a5c867d-x86_64-linux'
    ├───vm
    │   ├───aarch64-darwin: package 'nixos-vm'
    │   ├───aarch64-linux: package 'nixos-vm'
    │   ├───i686-linux: package 'nixos-vm'
    │   ├───x86_64-darwin: package 'nixos-vm'
    │   └───x86_64-linux: package 'nixos-vm'
    ├───vm-bootloader
    │   ├───aarch64-darwin: package 'nixos-vm'
    │   ├───aarch64-linux: package 'nixos-vm'
    │   ├───i686-linux: package 'nixos-vm'
    │   ├───x86_64-darwin: package 'nixos-vm'
    │   └───x86_64-linux: package 'nixos-vm'
    └───vmware
        ├───aarch64-darwin: package 'nixos-vmware-22.11.20220706.a5c867d-aarch64-darwin'
        ├───aarch64-linux: package 'nixos-vmware-22.11.20220706.a5c867d-aarch64-linux'
        ├───i686-linux: package 'nixos-vmware-22.11.20220706.a5c867d-i686-linux'
        ├───x86_64-darwin: package 'nixos-vmware-22.11.20220706.a5c867d-x86_64-darwin'
        └───x86_64-linux: package 'nixos-vmware-22.11.20220706.a5c867d-x86_64-linux'
```

## Usage

```sh
# USAGE: nix build '.#<PACKAGE>'
nix build '.#vmware'
nix build '.#qcow'
# etc...
```

## See Also

- [numtide/flake-utils](https://github.com/numtide/flake-utils)
- [nix-community/nixos-generators](https://github.com/nix-community/nixos-generators)
