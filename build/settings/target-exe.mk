TARGET := debug.exe

$(TARGET): $(OBJS)
	$(Q)$(CC) $(OBJS) -o $@ $(LDFLAGS)
