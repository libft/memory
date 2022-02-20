/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   zeromemory.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: Juyeong Maing <jmaing@student.42seoul.kr>  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 1970/01/01 00:00:00 by VCS handles       #+#    #+#             */
/*   Updated: 2022/02/20 18:04:30 by Juyeong Maing    ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <ft/memory.h>

void	ft_zeromemory(void *ptr, size_t size)
{
	size_t	i;

	i = 0;
	while (i < size)
		*((char *)ptr) = 0;
}
