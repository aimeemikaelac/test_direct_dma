set moduleName test_direct_dma
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName test_direct_dma
set C_modelType { int 32 }
set C_modelArgList { 
	{ read_mover_V_V int 72 regular {axi_s 1 volatile  { read_mover_V_V data } }  }
	{ write_mover_V_V int 72 regular {axi_s 1 volatile  { write_mover_V_V data } }  }
	{ in_stream_V_V int 128 regular {axi_s 0 volatile  { in_stream_V_V data } }  }
	{ out_stream_V_V int 128 regular {axi_s 1 volatile  { out_stream_V_V data } }  }
	{ sourceAddress int 32 regular {axi_slave 0}  }
	{ destinationAddress int 32 regular {axi_slave 0}  }
	{ length_r int 32 regular {axi_slave 0}  }
	{ read_mover_halt int 1 regular {pointer 1 volatile }  }
	{ read_mover_halt_complete int 1 regular {pointer 0 volatile }  }
	{ write_mover_halt int 1 regular {pointer 1 volatile }  }
	{ write_mover_halt_complete int 1 regular {pointer 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "read_mover_V_V", "interface" : "axis", "bitwidth" : 72,"bitSlice":[{"low":0,"up":71,"cElement": [{"cName": "read_mover.V.V","cData": "uint72","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "write_mover_V_V", "interface" : "axis", "bitwidth" : 72,"bitSlice":[{"low":0,"up":71,"cElement": [{"cName": "write_mover.V.V","cData": "uint72","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_V_V", "interface" : "axis", "bitwidth" : 128,"bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "in_stream.V.V","cData": "uint128","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_V_V", "interface" : "axis", "bitwidth" : 128,"bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "out_stream.V.V","cData": "uint128","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sourceAddress", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sourceAddress","cData": "unsigned int","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : [{"in":24}]} , 
 	{ "Name" : "destinationAddress", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "destinationAddress","cData": "unsigned int","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : [{"in":32}]} , 
 	{ "Name" : "length_r", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "length","cData": "int","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : [{"in":40}]} , 
 	{ "Name" : "read_mover_halt", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "read_mover_halt","cData": "bool","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "read_mover_halt_complete", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "read_mover_halt_complete","cData": "bool","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "write_mover_halt", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "write_mover_halt","cData": "bool","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "write_mover_halt_complete", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "write_mover_halt_complete","cData": "bool","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}], "offset" : [{"out":16}]} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ read_mover_V_V_TDATA sc_out sc_lv 72 signal 0 } 
	{ read_mover_V_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ read_mover_V_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ write_mover_V_V_TDATA sc_out sc_lv 72 signal 1 } 
	{ write_mover_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ write_mover_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ in_stream_V_V_TDATA sc_in sc_lv 128 signal 2 } 
	{ in_stream_V_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ in_stream_V_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ out_stream_V_V_TDATA sc_out sc_lv 128 signal 3 } 
	{ out_stream_V_V_TVALID sc_out sc_logic 1 outvld 3 } 
	{ out_stream_V_V_TREADY sc_in sc_logic 1 outacc 3 } 
	{ read_mover_halt sc_out sc_logic 1 signal 7 } 
	{ read_mover_halt_complete sc_in sc_logic 1 signal 8 } 
	{ write_mover_halt sc_out sc_logic 1 signal 9 } 
	{ write_mover_halt_complete sc_in sc_logic 1 signal 10 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"test_direct_dma","role":"start","value":"0","valid_bit":"0"},{"name":"test_direct_dma","role":"continue","value":"0","valid_bit":"4"},{"name":"test_direct_dma","role":"auto_start","value":"0","valid_bit":"7"},{"name":"sourceAddress","role":"data","value":"24"}, {"name":"sourceAddress","role":"valid","value":"28","valid_bit":"0"},{"name":"destinationAddress","role":"data","value":"32"}, {"name":"destinationAddress","role":"valid","value":"36","valid_bit":"0"},{"name":"length_r","role":"data","value":"40"}, {"name":"length_r","role":"valid","value":"44","valid_bit":"0"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"test_direct_dma","role":"start","value":"0","valid_bit":"0"},{"name":"test_direct_dma","role":"done","value":"0","valid_bit":"1"},{"name":"test_direct_dma","role":"idle","value":"0","valid_bit":"2"},{"name":"test_direct_dma","role":"ready","value":"0","valid_bit":"3"},{"name":"test_direct_dma","role":"auto_start","value":"0","valid_bit":"7"},{"name":"return","role":"data","value":"16"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "read_mover_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "read_mover_V_V", "role": "TDATA" }} , 
 	{ "name": "read_mover_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "read_mover_V_V", "role": "TVALID" }} , 
 	{ "name": "read_mover_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "read_mover_V_V", "role": "TREADY" }} , 
 	{ "name": "write_mover_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "write_mover_V_V", "role": "TDATA" }} , 
 	{ "name": "write_mover_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "write_mover_V_V", "role": "TVALID" }} , 
 	{ "name": "write_mover_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "write_mover_V_V", "role": "TREADY" }} , 
 	{ "name": "in_stream_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "in_stream_V_V", "role": "TDATA" }} , 
 	{ "name": "in_stream_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_V", "role": "TVALID" }} , 
 	{ "name": "in_stream_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_V", "role": "TREADY" }} , 
 	{ "name": "out_stream_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "out_stream_V_V", "role": "TDATA" }} , 
 	{ "name": "out_stream_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_V", "role": "TVALID" }} , 
 	{ "name": "out_stream_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_V", "role": "TREADY" }} , 
 	{ "name": "read_mover_halt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "read_mover_halt", "role": "default" }} , 
 	{ "name": "read_mover_halt_complete", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "read_mover_halt_complete", "role": "default" }} , 
 	{ "name": "write_mover_halt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "write_mover_halt", "role": "default" }} , 
 	{ "name": "write_mover_halt_complete", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "write_mover_halt_complete", "role": "default" }} , 
 	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "interrupt", "role": "default" }}  ]}
set Spec2ImplPortList { 
	read_mover_V_V { axis {  { read_mover_V_V_TDATA out_data 1 72 }  { read_mover_V_V_TVALID out_vld 1 1 }  { read_mover_V_V_TREADY out_acc 0 1 } } }
	write_mover_V_V { axis {  { write_mover_V_V_TDATA out_data 1 72 }  { write_mover_V_V_TVALID out_vld 1 1 }  { write_mover_V_V_TREADY out_acc 0 1 } } }
	in_stream_V_V { axis {  { in_stream_V_V_TDATA in_data 0 128 }  { in_stream_V_V_TVALID in_vld 0 1 }  { in_stream_V_V_TREADY in_acc 1 1 } } }
	out_stream_V_V { axis {  { out_stream_V_V_TDATA out_data 1 128 }  { out_stream_V_V_TVALID out_vld 1 1 }  { out_stream_V_V_TREADY out_acc 0 1 } } }
	read_mover_halt { ap_none {  { read_mover_halt out_data 1 1 } } }
	read_mover_halt_complete { ap_none {  { read_mover_halt_complete in_data 0 1 } } }
	write_mover_halt { ap_none {  { write_mover_halt out_data 1 1 } } }
	write_mover_halt_complete { ap_none {  { write_mover_halt_complete in_data 0 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
