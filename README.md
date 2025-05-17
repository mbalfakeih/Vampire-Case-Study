# Vampire-Case-Study
Code for CSE3000 Research Project at TU Delft.

This is a case study researching the capabilities and limitations of Vampire in performing automated software verification. Sorting algorithms and a key-value store are/will be defined in TPTP, then conjectures are defined to see whether Vampire is able to prove them.

This repository has only been tested on Linux (specifically Fedora), since Vampire is only really available for Linux, this is unlikely to change.

Code was ran with Vampire 4.9 (commit 5ad494e78)

## Requirements
To use the bash scripts provided, the following tools are required:
- [Vampire](https://vprover.github.io/), symlinked to vampire, this is required for `prove\_properties.sh`
- [tptp4X](https://github.com/TPTPWorld/TPTP4X), symlinked to tptp4X, this is required for `prettify.sh`
