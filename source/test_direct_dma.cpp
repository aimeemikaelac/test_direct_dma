#include <math.h>
#include <ap_int.h>
#include <hls_stream.h>

typedef ap_uint<128> uint128_t;
typedef ap_uint<72> uint72_t;
typedef hls::stream<uint128_t> mem_stream;
typedef hls::stream<uint72_t> datamover_ctl;

int test_direct_dma(datamover_ctl& read_mover, datamover_ctl& write_mover, mem_stream& in_stream, mem_stream& out_stream,
		volatile unsigned sourceAddress, volatile unsigned destinationAddress, volatile int length,
		volatile bool* read_mover_halt, volatile bool* read_mover_halt_complete, volatile bool* write_mover_halt, volatile bool* write_mover_halt_complete){
#pragma HLS INTERFACE ap_none port=write_mover_halt_complete

#pragma HLS INTERFACE ap_none port=write_mover_halt

#pragma HLS INTERFACE ap_none port=read_mover_halt_complete

#pragma HLS INTERFACE ap_none port=read_mover_halt

#pragma HLS INTERFACE axis port=write_mover

#pragma HLS INTERFACE axis port=read_mover

#pragma HLS INTERFACE s_axilite port=return

#pragma HLS INTERFACE s_axilite port=length

#pragma HLS INTERFACE ap_vld port=length

#pragma HLS INTERFACE ap_vld port=destinationAddress

#pragma HLS INTERFACE ap_vld port=sourceAddress


//#pragma HLS INTERFACE m_axi port=m_s2mm_ctl offset=off

//#pragma HLS INTERFACE m_axi port=m_mm2s_ctl offset=off

#pragma HLS INTERFACE axis port=out_stream

#pragma HLS INTERFACE axis port=in_stream

#pragma HLS INTERFACE s_axilite port=destinationAddress

#pragma HLS INTERFACE s_axilite port=sourceAddress

	unsigned sourceOffset = sourceAddress;//floor(sourceAddress/4);
	unsigned destOffset = destinationAddress;//floor(destinationAddress/4);
//	static int out_index = 0;
	int read_length = length*16;
	//TODO: reset each iteration
	*read_mover_halt = true;
	while(*read_mover_halt_complete == false){
		*read_mover_halt = false;
	}

	*write_mover_halt = true;
	while(*write_mover_halt_complete == false){
		*write_mover_halt = false;
	}


//	m_mm2s_ctl[0] &= 0;
//	m_s2mm_ctl[12] &= 0;
//	m_mm2s_ctl[0] |= 4;
////	int wait = m_mm2s_ctl[0] & 4;
////	while(wait != 0){
////		wait = m_mm2s_ctl[0] & 4;
////	}
//	m_s2mm_ctl[12] |= 4;
////	wait = m_s2mm_ctl[12] & 4;
////	while(wait != 0){
////		wait = m_s2mm_ctl[12] & 4;
////	}
//
//	m_mm2s_ctl[0] &= 0;
//	m_s2mm_ctl[12] &= 0;
//
//	//--------Program read DMA mm2s----------
	ap_uint<32> read_mover_source(sourceAddress);
	ap_uint<32> read_mover_length(read_length);
	ap_uint<8> read_mover_tag(0);
	ap_uint<72> read_mover_data = (read_mover_tag, (read_mover_source, read_mover_length));
	read_mover.write(read_mover_data);
//	//enable read dma block
//	m_mm2s_ctl[0] |= 1;
//	//enable read interupts
//	m_mm2s_ctl[0] |= 4096;
//	//write source address
//	m_mm2s_ctl[0x18/4] = sourceAddress;
////	m_mm2s_ctl[8] = bram_source;
//	//calculate # of bytes that will be read from s_in in total
//	//read_length = #encryptions X #bytes/encryption

//
//	m_mm2s_ctl[0x28/4] = read_length;
//	//--------Program write DMA s2mm--------
	ap_uint<32> write_mover_source(destinationAddress);
	ap_uint<32> write_mover_length(read_length);
	ap_uint<8> write_mover_tag(0);
	ap_uint<72> write_mover_data = (write_mover_tag, (write_mover_source, write_mover_length));
	write_mover.write(write_mover_data);
//	//enable s2mm on write dma block
//	m_s2mm_ctl[0x30/4] |= 1;
//	//enable write interrupts
//	m_s2mm_ctl[0x30/4] |= 4096;
//	//write dest address
//	m_s2mm_ctl[0x48/4] = destinationAddress;
////	m_s2mm_ctl[6] = destinationAddress;
////	m_s2mm_ctl[8] = bram_dest;
//	//write write length as the same as read length
////	m_s2mm_ctl[10] = read_length;
//	m_s2mm_ctl[0x58/4] = read_length;


	int i;
	for(i=0; i<length; i++){
//		s_out[i] = s_in[i];
//		ddr[destinationAddress + i] = ddr[sourceAddress + i];
		out_stream.write(in_stream.read());
	}
	return read_length;
}
