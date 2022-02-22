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

#ifndef MEMORY_H
# define MEMORY_H

# include <stddef.h>

void	ft_zeromemory(void *ptr, size_t size);
void	ft_memset(void *ptr, size_t size, char value);
void	ft_array_memset(void *ptr, size_t count, size_t size, void *value);

void	ft_memcpy(void *dest, void *src, size_t size);
void	ft_memmove(void *dest, void *src, size_t size);

int		ft_memcmp(void *s1, void *s2, size_t size);

size_t	ft_memchr(void *ptr, char value, size_t size);
void	*ft_memchp(void *ptr, char value, size_t size);
size_t	ft_memstr(void *ptr, void *value, size_t ptr_size, size_t value_size);
void	*ft_memstp(void *ptr, void *value, size_t ptr_size, size_t value_size);
size_t	ft_memrchr(void *ptr, char value, size_t size);
void	*ft_memrchp(void *ptr, char value, size_t size);
size_t	ft_memrstr(void *ptr, void *value, size_t ptr_size, size_t value_size);
void	*ft_memrstp(void *ptr, void *value, size_t ptr_size, size_t value_size);

#endif
