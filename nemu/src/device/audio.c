#include <common.h>
#include <device/map.h>
#include <SDL2/SDL.h>

enum {
  reg_freq,
  reg_channels,
  reg_samples,
  reg_sbuf_size,
  reg_init,
  reg_count,
  nr_reg
};

static uint8_t *sbuf = NULL;
static uint32_t *audio_base = NULL;
static uint32_t sbuf_pos = 0;

void audio_sdl_callback(void *userdata, uint8_t *stream, int len) {
	SDL_memset(stream, 0, len);
	uint32_t used_cnt = audio_base[reg_count];
	len = len > used_cnt ? used_cnt : len;
	uint32_t sbuf_size = audio_base[reg_sbuf_size];

	if( (sbuf_pos + len) > sbuf_size) {
		SDL_MixAudio(stream, sbuf + sbuf_pos, sbuf_size - sbuf_pos, SDL_MIX_MAXVOLUME);
		SDL_MixAudio(stream + (sbuf_size - sbuf_pos), sbuf + (sbuf_size - sbuf_pos), len - (sbuf_size - sbuf_pos), SDL_MIX_MAXVOLUME);
		//printf("the length of data over the sbuf_size\n");
	}
	else
		SDL_MixAudio(stream, sbuf + sbuf_pos, len, SDL_MIX_MAXVOLUME);
	sbuf_pos = (sbuf_pos + len) % sbuf_size;
	//printf("when run callback, the used count is %d\n--------\n", audio_base[reg_count]);
	audio_base[reg_count] -= len;
}

void init_subaudio() {
	SDL_AudioSpec s = {};
	s.format = AUDIO_S16SYS;
	s.userdata = NULL;
	s.freq = audio_base[reg_freq];
	s.channels = audio_base[reg_channels];
	s.samples = audio_base[reg_samples];
	s.callback = audio_sdl_callback; 
	int ret = SDL_InitSubSystem(SDL_INIT_AUDIO);
	if (ret==0) {
	    SDL_OpenAudio(&s, NULL);
	    SDL_PauseAudio(0);	//进行播放
	}
}

static void audio_io_handler(uint32_t offset, int len, bool is_write) {
	//printf("%d", audio_base[reg_init]);
	if(audio_base[reg_init] == 1) {
		printf("start to init.......\n");
		init_subaudio();
		audio_base[reg_init] = 0;
	}
}

void init_audio() {
  uint32_t space_size = sizeof(uint32_t) * nr_reg;
  audio_base = (uint32_t *)new_space(space_size);
#ifdef CONFIG_HAS_PORT_IO
  add_pio_map ("audio", CONFIG_AUDIO_CTL_PORT, audio_base, space_size, audio_io_handler);
#else
  add_mmio_map("audio", CONFIG_AUDIO_CTL_MMIO, audio_base, space_size, audio_io_handler);
#endif
  
  sbuf = (uint8_t *)new_space(CONFIG_SB_SIZE);
  add_mmio_map("audio-sbuf", CONFIG_SB_ADDR, sbuf, CONFIG_SB_SIZE, NULL);
  audio_base[reg_sbuf_size] = CONFIG_SB_SIZE; //一开始是0
  printf("whem system start, the count is %d", audio_base[reg_count]);
}
