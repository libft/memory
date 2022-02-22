ifeq ($(TARGET_MODE), debug)
	include $(BASE_DIR)/build/settings/mode-debug.mk
else ifeq ($(TARGET_MODE), release)
	include $(BASE_DIR)/build/settings/mode-release.mk
else ifeq ($(TARGET_MODE), dist)
	include $(BASE_DIR)/build/settings/mode-dist.mk
else
	$(error TARGET_MODE must be one of debug or release or dist)
endif
