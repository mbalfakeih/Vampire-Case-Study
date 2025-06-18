# Vampire-Case-Study
Code for CSE3000 Research Project at TU Delft.

This is a case study researching the capabilities and limitations of Vampire in performing automated software verification. Selection Sort and a Key-Value Store are defined in TPTP and SMT-LIB 2.7, then conjectures are defined to see whether Vampire is able to prove them.

## Requirements
To use the bash scripts provided, the following tools are required:
- [Vampire](https://vprover.github.io/), symlinked to vampire, this is required for `prove_properties.sh`
- [tptp4X](https://github.com/TPTPWorld/TPTP4X), symlinked to tptp4X, this is required for `prettify.sh`

## Notes regarding Usage
This repository has only been tested on Linux (specifically Fedora), since Vampire is only really available for Linux, this is unlikely to change.

Code was ran with Vampire 4.9 (commit 5ad494e78), and all theorems in `*theorems` folders could be proven using `prove_properties.sh` within the time limit on a Lenovo Legion 5 15ARH05 (82B5).

Note that the `prove_properties.sh` scripts need to be ran in the exact folder they're defined in, otherwise there may be issues with file paths.

TPTP4X (commit 0f4c2d5074b8a) was used in the scripts.

`impossible` folders contain theorems which I believe should follow from the axioms, but Vampire was unable to prove. If you disagree with this then feel free to (quite literally) prove me wrong.

## File Extensions for TPTP files
- `.ax` refers to axioms
- `.p` refers to theorems that (should) follow from the axioms

