$(call require_v, TARGET_TRIPLE, build target triple)

include $(BASE_DIR)/build/settings/mode-release.mk

LDFLAGS += -target $(TARGET_TRIPLE)
CFLAGS += -target $(TARGET_TRIPLE)
