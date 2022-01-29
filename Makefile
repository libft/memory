all:
	@sh -c "cd build/debug/a && make all"
	@sh -c "cd build/debug/so && make all"
	@sh -c "cd build/release/a && make all"
	@sh -c "cd build/release/so && make all"
clean:
	@sh -c "cd build/debug/a && make clean"
	@sh -c "cd build/debug/so && make clean"
	@sh -c "cd build/release/a && make clean"
	@sh -c "cd build/release/so && make clean"
fclean:
	@sh -c "cd build/debug/a && make fclean"
	@sh -c "cd build/debug/so && make fclean"
	@sh -c "cd build/release/a && make fclean"
	@sh -c "cd build/release/so && make fclean"
re:
	@sh -c "cd build/debug/a && make re"
	@sh -c "cd build/debug/so && make re"
	@sh -c "cd build/release/a && make re"
	@sh -c "cd build/release/so && make re"
.PHONY: all clean fclean re
