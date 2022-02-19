LDFLAGS += -fsanitize=address -fno-omit-frame-pointer -fstack-protector-strong
CFLAGS += -g3 -DDEBUG -fsanitize=address -fno-omit-frame-pointer -fstack-protector-strong -save-temps=obj
