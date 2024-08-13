set projDir "/media/share/Alchitry/alu/build/vivado"
set projName "alu"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir"]} { file delete -force "$projDir" }
create_project $projName "$projDir" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "/media/share/Alchitry/alu/build/source/MI_alchitryTop.v" "/media/share/Alchitry/alu/build/source/MI_resetConditioner_cd0f1f3b.v" "/media/share/Alchitry/alu/build/source/MI_aluManualTester_7146de57.v" "/media/share/Alchitry/alu/build/source/MI_alu.v" "/media/share/Alchitry/alu/build/source/MI_adder_782e3138.v" "/media/share/Alchitry/alu/build/source/MI_rca_782e3138.v" "/media/share/Alchitry/alu/build/source/MI_fa.v" "/media/share/Alchitry/alu/build/source/MI_boolean_782e3138.v" "/media/share/Alchitry/alu/build/source/MI_mux4.v" "/media/share/Alchitry/alu/build/source/MI_shifter.v" "/media/share/Alchitry/alu/build/source/MI_leftShifter.v" "/media/share/Alchitry/alu/build/source/MI_xBitLeftShifter_302e7480.v" "/media/share/Alchitry/alu/build/source/MI_mux2.v" "/media/share/Alchitry/alu/build/source/MI_xBitLeftShifter_9c52b671.v" "/media/share/Alchitry/alu/build/source/MI_xBitLeftShifter_b895f260.v" "/media/share/Alchitry/alu/build/source/MI_xBitLeftShifter_c13fc91.v" "/media/share/Alchitry/alu/build/source/MI_xBitLeftShifter_4ce8fa1.v" "/media/share/Alchitry/alu/build/source/MI_bitReverse_782e3138.v" "/media/share/Alchitry/alu/build/source/MI_compare.v" "/media/share/Alchitry/alu/build/source/MI_multiplier.v" "/media/share/Alchitry/alu/build/source/MI_buttonConditioner_f61aaa29.v" "/media/share/Alchitry/alu/build/source/MI_pipeline_432f9f9a.v" "/media/share/Alchitry/alu/build/source/MI_edgeDetector_fe7d1ac7.v" "/media/share/Alchitry/alu/build/source/MI_sevenSegAlu.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "/media/share/Alchitry/alu/build/constraint/alchitry.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
