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

#include <stdint.h>

#include <ft/memory.h>

void	ft_array_memset(void *ptr, size_t count, size_t size, void *value)
{
	size_t	i;

	i = 0;
	while (i < count)
	{
		ft_memcpy((void *)((uintptr_t) ptr + i * size), value, size);
		i++;
	}
}
