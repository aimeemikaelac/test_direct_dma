#include <stdio.h>
#include <ap_int.h>
#include <hls_stream.h>

//bool test_direct_dma(hls::stream<unsigned> &in_stream, hls::stream<unsigned> &out_stream, volatile unsigned* m_mm2s_ctl,
//		volatile unsigned* m_s2mm_ctl, volatile unsigned sourceAddress, volatile unsigned destinationAddress){

bool test_direct_dma(hls::stream<unsigned>*, hls::stream<unsigned>*, volatile unsigned*,
		volatile unsigned*, volatile unsigned, volatile unsigned);

int main(){
	unsigned int mm2s_ctl[50];
	unsigned int s2mm_ctl[50];
	volatile unsigned source = 0x10;
	volatile unsigned dest = 0x20;
	volatile unsigned char ddr[0x30];
	volatile int s_in[200];
	volatile int s_out[200];
	unsigned char answer = 0xff;
	int i;

	for(i=0; i<50; i++){
		mm2s_ctl[i] = 0;
		s2mm_ctl[i] = 0;
	}

	for(i=0; i<200; i++){
		s_in[i] = 0;
		s_out[i] = 0;
	}

	for(i = 0; i<5*4; i++){
//		s_in[i] = ap_uint<128>("41414141414141414141414141414141", 16);
//		s_out[i] = ap_uint<128>(0);
		s_in[i] = 0x41414141;
	}
	for(i=0; i<5; i++){
		mm2s_ctl[i] = 0;
		s2mm_ctl[i] = 0;
	}

	for(i=0; i<5*4; i++){
			printf("\nOutput number %i: %08x - before function", i, s_out[i]);
		}
	bool finished;
	bool reset = false;
	hls::stream<unsigned> in;
	hls::stream<unsigned> out;
	test_direct_dma(&in, &out, mm2s_ctl, s2mm_ctl, source, dest);
	reset = true;
	for(i=0; i<5*4; i++){
//		if(s_out[i] != 0xffffffff){ //!= s_out[i]){
		unsigned read_val;
		if((read_val = out.read()) != i){
			return -1;
		}
		printf("\nOutput number %i: %08x", i, read_val);
	}

	printf("\nmm2s control registers:");
	for(i=0; i<24; i++){
		printf("\n%08x", mm2s_ctl[i]);
	}

	printf("\n\ns2mm control registers:");
	for(i=0; i<24; i++){
		printf("\n%08x", s2mm_ctl[i]);
	}

	return 0;
}
