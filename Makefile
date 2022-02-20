Q = $(if $(filter 1,$(V) $(VERBOSE)),,@)

all:
	$(Q)sh -c "cd build/debug/a && make all"
	$(Q)sh -c "cd build/debug/so && make all"
	$(Q)sh -c "cd build/release/a && make all"
	$(Q)sh -c "cd build/release/so && make all"
clean:
	$(Q)sh -c "cd build/debug/a && make clean"
	$(Q)sh -c "cd build/debug/so && make clean"
	$(Q)sh -c "cd build/release/a && make clean"
	$(Q)sh -c "cd build/release/so && make clean"
fclean:
	$(Q)sh -c "cd build/debug/a && make fclean"
	$(Q)sh -c "cd build/debug/so && make fclean"
	$(Q)sh -c "cd build/release/a && make fclean"
	$(Q)sh -c "cd build/release/so && make fclean"
re: fclean all
dist: re
	$(Q)rm -rf dist
	$(Q)mkdir -p dist/includes
	$(Q)cp build/release/a/lib*.a dist
	$(Q)cp build/release/so/lib*.so dist
	$(Q)cp -r src/includes dist
.PHONY: all clean fclean re dist
