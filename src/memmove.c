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

static void	ft_memrcpy(void *dest, void *src, size_t size)
{
	size_t	i;

	i = size;
	while (i--)
		*((char *)dest) = *((char *)src);
}

void	ft_memmove(void *dest, void *src, size_t size)
{
	if (src == dest)
		return ;
	if (src < dest && (uintptr_t) src + (uintptr_t) size > (uintptr_t) dest)
		ft_memrcpy(dest, src, size);
	else
		ft_memcpy(dest, src, size);
}
