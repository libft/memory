TARGET := libft_$(NAME).so

CFLAGS := $(CFLAGS) -fpic

$(TARGET): $(OBJS)
	$(Q)$(CC) $(OBJS) -o $@ $(LDFLAGS)
