# Makefile
# defaults
SIM ?= icarus
TOPLEVEL_LANG ?= verilog

VERILOG_SOURCES = count_up.v
# use VHDL_SOURCES for VHDL files
# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL = count_up
# MODULE is the basename of the Python test file
MODULE = testbench
# MODULE = testbench2
# include cocotb's make rules to take care of the simulator setup

ifeq ($(SIM), verilator)
    $(info verilator)
#     COMPILE_ARGS += --trace-vcd
else
    $(info icarus)
endif

include $(shell cocotb-config --makefiles)/Makefile.sim

# clean::
#     @rm -rf count_up_output
#     @rm -rf dump.vcd