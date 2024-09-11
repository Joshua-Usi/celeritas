package ral

import "vendor:glfw"
import vk "vendor:vulkan"

when GPU_API == .Vulkan {
	GPU_Buffer :: struct {
		handle: vk.Handle,
	}

	_backend_init :: proc (window: glfw.WindowHandle) {
		// TODO: VkApplicationInfo
		// TODO: VkInstanceCreateInfo
		// TODO: extensions
		// TODO: create logical device
		// TODO: create physical device
		// TODO: create swapchain
	}

	_backend_shutdown :: proc() {
		unimplemented()
	}

	_gpu_buffer_create :: proc(size: u64, type: BufferType, flags: BufferFlags) -> BufferHandle {
		// return GPU_Buffer{/* TODO: actually call vulkan and return the handle */ }
		return 1
	}

	_gpu_buffer_destroy :: proc(handle: BufferHandle) {
		unimplemented()
	}

  _gpu_buffer_upload :: proc(handle: BufferHandle, data: []u8) {
    unimplemented()
  }
}
