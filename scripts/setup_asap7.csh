setenv PROJ_ROOT $HOME/asic_mac_project
setenv ASAP7_ROOT $PROJ_ROOT/pdks/asap7
setenv ASAP7_PDK $ASAP7_ROOT/asap7_pdk_r1p7
setenv ASAP7_SC $ASAP7_ROOT/asap7sc7p5t_28

setenv ASAP7_LIB $PROJ_ROOT/pdks/asap7_unzipped_libs/asap7sc7p5t_SIMPLE_RVT_TT_nldm_211120.lib
setenv ASAP7_TECH_LEF $ASAP7_SC/techlef_misc/asap7_tech_1x_201209.lef
setenv ASAP7_CELL_LEF $ASAP7_SC/LEF/asap7sc7p5t_28_R_1x_220121a.lef
setenv ASAP7_CELL_VERILOG $ASAP7_SC/Verilog/asap7sc7p5t_SIMPLE_RVT_TT_201020.v

echo "ASAP7_LIB = $ASAP7_LIB"
echo "ASAP7_TECH_LEF = $ASAP7_TECH_LEF"
echo "ASAP7_CELL_LEF = $ASAP7_CELL_LEF"
echo "ASAP7_CELL_VERILOG = $ASAP7_CELL_VERILOG"
