#include <am.h>
#include <nemu.h>

#define SYNC_ADDR (VGACTL_ADDR + 4)

void __am_gpu_init() {
  //int i;
  //int w = 400;
  //int h = 300;
  //uint32_t *fb = (uint32_t *)(uintptr_t)FB_ADDR;
  //for(int i = 0; i < w * h; i++)
	//fb[i] = i;
  //outl(SYNC_ADDR, 1);
}

void __am_gpu_config(AM_GPU_CONFIG_T *cfg) {
  // 屏幕大小寄存器的软件实现（AM）
  uint32_t screen_size = inl(VGACTL_ADDR);
  uint32_t width = (screen_size >> 16) & 0xffff;
  uint32_t height = screen_size & 0xffff;
  *cfg = (AM_GPU_CONFIG_T) {
    .present = true, .has_accel = false,
    .width = width, .height = height,
    .vmemsz = 0
  };
}

void __am_gpu_fbdraw(AM_GPU_FBDRAW_T *ctl) {
  int x = ctl->x, y = ctl->y, w = ctl->w, h = ctl->h;
  if(!ctl->sync && w == 0 && h == 0)
    return;
  uint32_t *pixels = ctl->pixels;
  uint32_t *fb = (uint32_t *)(uintptr_t)FB_ADDR;
  uint32_t screen_w = inl(VGACTL_ADDR) >> 16;
  for(int i = y; i < y + h; i++) {
    for(int j = x; j < x + w; j++) {
		fb[i * screen_w + j] = pixels[(i - y)*w + (j - x)];
	}
  }
  if (ctl->sync) {
    outl(SYNC_ADDR, 1);
  }
}

void __am_gpu_status(AM_GPU_STATUS_T *status) {
  status->ready = true;
}
