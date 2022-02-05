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
.PHONY: all clean fclean re
