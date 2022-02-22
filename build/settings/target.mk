ifeq ($(TARGET_TYPE), a)
include $(BASE_DIR)/build/settings/target-a.mk
else ifeq ($(TARGET_TYPE), so)
include $(BASE_DIR)/build/settings/target-so.mk
else ifeq ($(TARGET_TYPE), exe)
include $(BASE_DIR)/build/settings/target-exe.mk
else
$(error TARGET_TYPE must be one of a or so or exe)
endif
