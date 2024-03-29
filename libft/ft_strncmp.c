/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncmp.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mle-roy <mle-roy@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/11/22 11:52:11 by mle-roy           #+#    #+#             */
/*   Updated: 2013/11/25 17:25:11 by mle-roy          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_strncmp(const char *s1, const char *s2, size_t n)
{
	unsigned int	i;

	i = 0;
	if (s1[0] != '\0' || s2[0] != '\0')
	{
		while ((s1[i] == s2[i]) && (i < n))
		{
			if (s1[i] == '\0' && s2[i] == '\0')
				return (0);
			i++;
		}
		if (s1[i] != s2[i])
			return (int)(s1[i] - s2[i]);
	}
	return (0);
}
