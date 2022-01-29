require_v = $(strip $(foreach 1,$1, $(call __require_v,$1,$(strip $(value 2)))))
__require_v = $(if $(value $1),, $(error Undefined $1$(if $2, ($2))))
