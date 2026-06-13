# ASIC MAC Final Results

## Final Post-Route Innovus Result

### Baseline MAC

Target clock period: approximately 610 ps  
Estimated frequency: approximately 1.64 GHz  

Setup timing: MET  
Worst setup slack: +1.305 ps  
Required time: 587.705 ps  
Arrival time: 586.400 ps  

Standard-cell area: 1224.253 um²  
Core area: 1605.433 um²  
Effective utilization: 76.257%  

Total power: 0.46341546 mW  

### Pipelined MAC

Target clock period: 600 ps  
Estimated frequency: approximately 1.67 GHz  

Setup timing: MET  
Worst setup slack: +2.457 ps  
Required time: 590.786 ps  
Arrival time: 588.329 ps  

Standard-cell area: 1204.425 um²  
Core area: 1934.669 um²  
Effective utilization: 62.355%  

Total power: 0.47428404 mW  

## ASAP7 4x Scaled LEF Area Note

Innovus physical area uses ASAP7 4x scaled LEFs, so divide by 16 for Genus-style comparison.

Baseline standard-cell comparison area: 1224.253 / 16 = 76.516  
Baseline core comparison area: 1605.433 / 16 = 100.340  

Pipelined standard-cell comparison area: 1204.425 / 16 = 75.277  
Pipelined core comparison area: 1934.669 / 16 = 120.917  

## Future Work

The pipelined MAC improved timing slightly, but the power increase mostly cancelled out the energy benefit. Future work should explore deeper or more balanced pipelining, simulation-based activity power, and larger MAC-array benchmarks where pipelining may have a clearer throughput advantage.
