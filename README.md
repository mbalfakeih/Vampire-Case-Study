# Vampire-Case-Study
Code for CSE3000 Research Project at TU Delft.

This is a case study researching the capabilities and limitations of Vampire in performing automated software verification. Sorting algorithms and a key-value store are/will be defined in TPTP, then conjectures are defined to see whether Vampire is able to prove them.

## Requirements
To use the bash scripts provided, the following tools are required:
- [Vampire](https://vprover.github.io/), symlinked to vampire, this is required for `prove_properties.sh`
- [tptp4X](https://github.com/TPTPWorld/TPTP4X), symlinked to tptp4X, this is required for `prettify.sh`

This repository has only been tested on Linux (specifically Fedora), since Vampire is only really available for Linux, this is unlikely to change.

Code was ran with Vampire 4.9 (commit 5ad494e78), and all theorems in `theorems` folders could be proven using `prove_properties.sh` within the time limit on a Lenovo Legion 5 15ARH05 (82B5).

## File Extensions
- '.ax' refers to axioms
- '.p' refers to theorems that follow from the axioms
- '.imp' refers to theorems that we believe follow from the axioms, but Vampire is unable to prove. (If you believe this is not the case, then feel free to make a pull request that, quite literally, proves us wrong)
