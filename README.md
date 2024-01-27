# eBPF Development Environment

This repository provides a Nix flake for setting up an isolated development environment for eBPF (extended Berkeley Packet Filter) development. The environment includes essential tools and dependencies for building and experimenting with eBPF programs.

## Features

- **Dependencies:** Utilizes the latest packages from the NixOS `nixos-unstable` channel.
- **Development Shell:** Sets up a development shell with the necessary tools, including BPF Compiler Collection (`bcc`), `libbpf`, `clang`, Python 3, and more.
- **Customization:** Easily extend and customize the development environment for your specific eBPF projects.

## Usage

1. Clone this repository:

   ```bash
   git clone https://github.com/byteshiva/eBPF-Development.git
   cd eBPF-Development
   ```

2. Initialize the development environment:

   ```bash
   nix develop
   ```

   This will drop you into a shell with all the required dependencies.

3. Start developing and experimenting with eBPF programs!

## Contributing

If you encounter issues or have improvements to suggest, feel free to open an issue or submit a pull request.

## License

This project is licensed under the [Apache-2.0-1](https://github.com/byteshiva/eBPF-Development?tab=Apache-2.0-1-ov-file#)
