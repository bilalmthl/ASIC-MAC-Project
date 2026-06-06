# ASIC MAC Project

This project implements and benchmarks a custom SystemVerilog Multiply-Accumulate (MAC) unit using a Cadence RTL-to-GDSII digital design flow.

## Current Flow

- RTL design in SystemVerilog
- Simulation using Cadence Xcelium
- Synthesis using Cadence Genus
- Place-and-route using Cadence Innovus
- Digital library prototyping using ASAP7 standard-cell libraries

## Local Setup

The ASAP7 PDK and standard-cell libraries are not included in this repository. They should be installed locally under:

```text
~/asic_mac_project/pdks/asap7
```

Then source:

```bash
source scripts/setup_asap7.csh
```

## Main Directories

```text
rtl/           SystemVerilog source files
tb/            Testbenches
constraints/   SDC timing constraints
scripts/       Setup scripts
genus/         Genus synthesis scripts
innovus/       Innovus place-and-route scripts
```
