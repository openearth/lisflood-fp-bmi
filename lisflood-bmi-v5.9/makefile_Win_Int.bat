:: Lisflood Makefile ms-dos batch file
:: must run from intel's dos window - “\Start Menu\Programs\Intel(R) Software Development Tools\Intel(R) C++ Compiler 9.1\Build Environment for IA-32 applications”.:: Mark Trigg 8/8/2008

icl -o lisflood_win.exe lisflood.cpp pars.cpp input.cpp iterateq.cpp boundary.cpp fp_flow.cpp ch_flow.cpp util.cpp output.cpp chkpnt.cpp por_flow.cpp weir_flow.cpp infevap.cpp /w /O3 /static