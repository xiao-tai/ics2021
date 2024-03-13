#include <am.h>
#include <nemu.h>
#include <klib.h>

#define AUDIO_FREQ_ADDR      (AUDIO_ADDR + 0x00)
#define AUDIO_CHANNELS_ADDR  (AUDIO_ADDR + 0x04)
#define AUDIO_SAMPLES_ADDR   (AUDIO_ADDR + 0x08)
#define AUDIO_SBUF_SIZE_ADDR (AUDIO_ADDR + 0x0c)
#define AUDIO_INIT_ADDR      (AUDIO_ADDR + 0x10)
#define AUDIO_COUNT_ADDR     (AUDIO_ADDR + 0x14)

static int sbuf_pos = 0;

void __am_audio_init() {
}

void __am_audio_config(AM_AUDIO_CONFIG_T *cfg) {
    int bufsize = inl(AUDIO_SBUF_ADDR); 
  	(*cfg) = (AM_AUDIO_CONFIG_T) {
		.present = true,
		.bufsize = bufsize
	};
}

void __am_audio_ctrl(AM_AUDIO_CTRL_T *ctrl) {
	outl(AUDIO_FREQ_ADDR, ctrl->freq);
	outl(AUDIO_CHANNELS_ADDR, ctrl->channels);
	outl(AUDIO_SAMPLES_ADDR, ctrl->samples);
	outl(AUDIO_INIT_ADDR, 1);
//	printf("%d, %d, %d", ctrl->freq, ctrl->channels, ctrl->samples);
}

void __am_audio_status(AM_AUDIO_STATUS_T *stat) {
  stat->count = inl(AUDIO_COUNT_ADDR);
}

void __am_audio_play(AM_AUDIO_PLAY_T *ctl) {
	//将buf的内容作为音频数据写入流缓冲区
//	printf("%d", sizeof(uint8_t));
	//printf("area begin: %x, and area end: %x\n", ctl->buf, (ctl->buf).end);
	//iprintf("sbuf_size = %d\n", inl(AUDIO_SBUF_SIZE_ADDR));
	uint8_t *audio_data = (ctl->buf).start;
	uint32_t sbuf_size = inl(AUDIO_SBUF_SIZE_ADDR);
	uint32_t cnt = inl(AUDIO_COUNT_ADDR);
	uint32_t len = ((ctl->buf).end - (ctl->buf).start);

	while(len > sbuf_size - cnt){;}

	uint8_t *stream_buf = (uint8_t*)(uintptr_t)AUDIO_SBUF_ADDR; //参考gpu.c
	//printf("read %d bytes\n", len);
	for(int i = 0; i < len; i++) {
		stream_buf[sbuf_pos] = audio_data[i];
		//sbuf_pos = sbuf_pos + 1;
		sbuf_pos = (sbuf_pos + 1) % sbuf_size;
		//stream_buf[0] = audio_data[i];
	}
	outl(AUDIO_COUNT_ADDR, inl(AUDIO_COUNT_ADDR) + len);
	//printf("used cnt is %d\n", inl(AUDIO_COUNT_ADDR));
}
