# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_bp0 {
pc_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
isBranch_V { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 24
	offset_end 31
}
result_V { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
}
dict set axilite_register_dict bp0 $port_bp0


