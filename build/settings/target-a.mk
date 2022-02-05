TARGET := libft_$(NAME).a

$(TARGET): $(OBJS)
	$(Q)ar cr $@ $(OBJS)
