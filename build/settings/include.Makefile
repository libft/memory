# common Makefile to include - entrypoint

ifndef BASE_DIR
$(error variable BASE_DIR (where src exists) is not set)
endif

include $(BASE_DIR)/build/settings/functions.Makefile
include $(BASE_DIR)/build/settings/variables.Makefile

$(call require_v, NAME, target name)
$(call require_v, TARGET_MODE, debug or release)
$(call require_v, TARGET_TYPE, a or so)

# common variables
CC = gcc
CFLAGS := -Wall -Wextra -Werror -std=c99 -pedantic
LDFLAGS :=
SRC_DIR := $(BASE_DIR)/src
SRCS := $(shell sh $(BASE_DIR)/build/scripts/get-srcs.sh $(SRC_DIR))
OBJS := $(SRCS:%.c=%.o)

# mode specific additional flags
ifeq ($(TARGET_MODE), debug)
CFLAGS += -g
else ifeq ($(TARGET_MODE), release)
CFLAGS += -O3
else
$(error TARGET_MODE must be one of debug or release)
endif

# rule for target
ifeq ($(TARGET_TYPE), a)
TARGET := libft_$(NAME).a
$(TARGET): $(OBJS)
	@ar cr $@ $(OBJS)
else ifeq ($(TARGET_TYPE), so)
TARGET := libft_$(NAME).so
CFLAGS := $(CFLAGS) -fpic
$(TARGET): $(OBJS)
	@$(CC) $(OBJS) -o $@ $(CFLAGS) $(LDFLAGS)
else
$(error TARGET_TYPE must be one of a or so)
endif

# common .PHONY rules
all: $(TARGET)
clean:
	@$(shell sh $(BASE_DIR)/build/scripts/clean.sh)
fclean: clean
	@rm -rf $(TARGET)
re: fclean all
.PHONY: all clean fclean re

# common rules
%.o: $(SRC_DIR)/%.c
	@mkdir -p $(@D)
	@$(CC) $(CFLAGS) -c $< -o $@ -MD

# auto updated dependencies
-include $(OBJS:%.o=%.d)
