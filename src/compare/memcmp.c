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

int	ft_memcmp(void *s1, void *s2, size_t size)
{
	size_t	i;

	i = 0;
	while (i < size)
	{
		if (*((unsigned char *) s1 + i) > *((unsigned char *) s2 + i))
			return (1);
		if (*((unsigned char *) s1 + i) < *((unsigned char *) s2 + i))
			return (-1);
		i++;
	}
	return (0);
}
