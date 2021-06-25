set moduleName top
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {top}
set C_modelType { void 0 }
set C_modelArgList {
	{ pc_V int 32 regular {axi_slave 0}  }
	{ isBranch_V int 1 regular {axi_slave 1}  }
	{ result_V int 1 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pc_V", "interface" : "axi_slave", "bundle":"bp0","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pc.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "isBranch_V", "interface" : "axi_slave", "bundle":"bp0","type":"ap_vld","bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "isBranch.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":24}, "offset_end" : {"out":31}} , 
 	{ "Name" : "result_V", "interface" : "axi_slave", "bundle":"bp0","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "result.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_axi_bp0_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_bp0_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_bp0_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_bp0_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_bp0_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_bp0_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_bp0_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_bp0_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_bp0_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_bp0_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_bp0_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_bp0_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_bp0_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_bp0_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_bp0_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_bp0_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_bp0_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_bp0_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bp0", "role": "AWADDR" },"address":[{"name":"pc_V","role":"data","value":"16"},{"name":"result_V","role":"data","value":"32"}] },
	{ "name": "s_axi_bp0_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bp0", "role": "AWVALID" } },
	{ "name": "s_axi_bp0_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bp0", "role": "AWREADY" } },
	{ "name": "s_axi_bp0_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bp0", "role": "WVALID" } },
	{ "name": "s_axi_bp0_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bp0", "role": "WREADY" } },
	{ "name": "s_axi_bp0_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bp0", "role": "WDATA" } },
	{ "name": "s_axi_bp0_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bp0", "role": "WSTRB" } },
	{ "name": "s_axi_bp0_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bp0", "role": "ARADDR" },"address":[{"name":"isBranch_V","role":"data","value":"24"}, {"name":"isBranch_V","role":"valid","value":"28","valid_bit":"0"}] },
	{ "name": "s_axi_bp0_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bp0", "role": "ARVALID" } },
	{ "name": "s_axi_bp0_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bp0", "role": "ARREADY" } },
	{ "name": "s_axi_bp0_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bp0", "role": "RVALID" } },
	{ "name": "s_axi_bp0_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bp0", "role": "RREADY" } },
	{ "name": "s_axi_bp0_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bp0", "role": "RDATA" } },
	{ "name": "s_axi_bp0_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bp0", "role": "RRESP" } },
	{ "name": "s_axi_bp0_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bp0", "role": "BVALID" } },
	{ "name": "s_axi_bp0_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bp0", "role": "BREADY" } },
	{ "name": "s_axi_bp0_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bp0", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "3",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "isBranch_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "result_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "perceptron_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bht_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bht_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "perceptron_V_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "perceptron_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bht_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bht_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "perceptron_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "perceptron_V_3", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.perceptron_V_4_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.perceptron_V_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.perceptron_V_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.perceptron_V_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.perceptron_V_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_bp0_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	top {
		pc_V {Type I LastRead 0 FirstWrite -1}
		isBranch_V {Type O LastRead -1 FirstWrite 2}
		result_V {Type I LastRead 0 FirstWrite -1}
		perceptron_V_4 {Type IO LastRead -1 FirstWrite -1}
		bht_0 {Type IO LastRead -1 FirstWrite -1}
		bht_1 {Type IO LastRead -1 FirstWrite -1}
		perceptron_V_0 {Type IO LastRead -1 FirstWrite -1}
		perceptron_V_1 {Type IO LastRead -1 FirstWrite -1}
		bht_2 {Type IO LastRead -1 FirstWrite -1}
		bht_3 {Type IO LastRead -1 FirstWrite -1}
		perceptron_V_2 {Type IO LastRead -1 FirstWrite -1}
		perceptron_V_3 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "3"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
