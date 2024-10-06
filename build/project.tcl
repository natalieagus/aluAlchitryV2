set projDir "/media/share/Alchitry/alu/build/vivado"
set projName "alu"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir"]} { file delete -force "$projDir" }
create_project $projName "$projDir" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "/media/share/Alchitry/alu/build/source/alchitry_top.sv" "/media/share/Alchitry/alu/build/source/reset_conditioner.sv" "/media/share/Alchitry/alu/build/source/rca.sv" "/media/share/Alchitry/alu/build/source/fa.sv" "/media/share/Alchitry/alu/build/source/mux2.sv" "/media/share/Alchitry/alu/build/source/mux4.sv" "/media/share/Alchitry/alu/build/source/bit_reverse.sv" "/media/share/Alchitry/alu/build/source/boolean.sv" "/media/share/Alchitry/alu/build/source/compare.sv" "/media/share/Alchitry/alu/build/source/x_bit_left_shifter.sv" "/media/share/Alchitry/alu/build/source/left_shifter.sv" "/media/share/Alchitry/alu/build/source/shifter.sv" "/media/share/Alchitry/alu/build/source/multiplier.sv" "/media/share/Alchitry/alu/build/source/alu.sv" "/media/share/Alchitry/alu/build/source/adder.sv" "/media/share/Alchitry/alu/build/source/pipeline.sv" "/media/share/Alchitry/alu/build/source/button_conditioner.sv" "/media/share/Alchitry/alu/build/source/edge_detector.sv" "/media/share/Alchitry/alu/build/source/alu_manual_tester.sv" "/media/share/Alchitry/alu/build/source/decoder.sv" "/media/share/Alchitry/alu/build/source/counter.sv" "/media/share/Alchitry/alu/build/source/seven_seg_alu.sv" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "/media/share/Alchitry/alu/build/constraint/alchitry.xdc" "/media/share/Alchitry/alu/build/constraint/au_props.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
