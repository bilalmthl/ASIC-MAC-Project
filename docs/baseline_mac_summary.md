# Baseline ASIC MAC Summary

## Project Overview

This project implements a SystemVerilog multiply-accumulate unit using a Cadence digital ASIC flow with ASAP7 standard-cell libraries. The goal is to evaluate the MAC block through synthesis and physical implementation using timing, area, and power metrics.

## Design

The baseline design is an unpipelined signed MAC. It multiplies two 8-bit signed inputs and accumulates the result into a 32-bit signed output register.

## Tool Flow

The completed flow includes:

1. SystemVerilog RTL design
2. RTL simulation using Xcelium
3. Genus synthesis using ASAP7 RVT standard-cell libraries
4. Genus clock-period sweep
5. Innovus placement and pre-CTS optimization
6. Clock tree synthesis
7. Routing and post-route optimization
8. Final post-route timing, area, and power reporting

## Genus Synthesis Results

The Genus clock sweep showed that the unpipelined MAC met timing down to a 450 ps target at synthesis level. It failed at 400 ps. This places the synthesis-level maximum frequency between approximately 2.22 GHz and 2.50 GHz.

## Innovus Physical Implementation

Initial Innovus attempts using aggressive Genus sweep points failed timing after placement. Timing closure required a looser floorplan, pre-CTS optimization, CTS, routing, and post-route setup optimization.

## Final Post-Route Result

| Metric | Result |
|---|---:|
| Setup timing | MET |
| Worst setup slack | +1.305 ps |
| Required time | 587.705 ps |
| Arrival time | 586.400 ps |
| Standard-cell area | 1224.253 um² |
| Core area | 1605.433 um² |
| Effective utilization | 76.257% |
| Total power | 0.46341545 mW |

## ASAP7 4x Scaled LEF Area Note

The Innovus physical implementation used ASAP7 4x scaled LEFs. For comparison against Genus-style ASAP7 area values, divide physical area by approximately 16.

| Area Metric | 4x LEF Area | Comparison Area |
|---|---:|---:|
| Standard-cell area | 1224.253 um² | 76.516 |
| Core area | 1605.433 um² | 100.340 |

## Interpretation

The baseline unpipelined MAC successfully completed the ASIC-oriented RTL-to-post-route flow. The final routed design meets setup timing with +1.305 ps slack and reports approximately 0.463 mW total power. This result provides a baseline for comparing future MAC variants, especially a pipelined MAC implementation.

## Limitations

The current result is based on tool-estimated switching activity rather than simulation-derived activity. Future work should include activity-based power analysis, a pipelined MAC design, and comparison of throughput, area, power, and energy per operation.