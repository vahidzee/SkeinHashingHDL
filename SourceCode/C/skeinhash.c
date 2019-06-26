#include "miner.h"

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#include "sph_skein.h"



void skeinhash(void *output, const void *input)
{
	uint8_t hash[64];
	sph_skein512_context ctx;

	
	sph_skein512_init(&ctx);
	sph_skein512(&ctx, input, 80);
	sph_skein512_close(&ctx, (void*)hash);

	
	memcpy(output, hash, 32);
}
