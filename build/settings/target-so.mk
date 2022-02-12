TARGET := libft_$(NAME).so

CFLAGS := $(CFLAGS) -fpic

$(TARGET): $(OBJS)
	$(Q)$(CC) -shared $(OBJS) -o $@ $(LDFLAGS)
