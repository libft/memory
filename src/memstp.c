/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fake_file_name (file name is useless too)          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: 42header-remover <whatever@example.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 1970/01/01 00:00:00 by VCS handles       #+#    #+#             */
/*   Updated: 1970/01/01 00:00:00 by file history     ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <ft/memory.h>

void	*ft_memstp(void *ptr, void *value, size_t ptr_size, size_t value_size)
{
	size_t	i;
	size_t	size;

	size = ptr_size - value_size + 1;
	i = 0;
	while (i < size)
	{
		if (!ft_memcmp((void *)((char *) ptr + i), value, value_size))
			return ((void *)((char *) ptr + i));
		i++;
	}
	return (NULL);
}
