/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mle-roy <mle-roy@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/11/25 13:06:47 by mle-roy           #+#    #+#             */
/*   Updated: 2013/12/30 14:51:07 by mle-roy          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strtrim(char const *s)
{
	size_t	i;
	size_t	len;
	char	*new;

	i = 0;
	len = ft_strlen(s);
	while (len && (s[len] == ' ' || s[len] == '\n'
		|| s[len] == '\t' || !s[len]))
		len--;
	if (len == 0)
	{
		new = (char*)malloc(sizeof(new) * 1);
		if (new == NULL)
			return (NULL);
		new[0] = '\0';
		return (new);
	}
	while (s[i] && (s[i] == ' ' || s[i] == '\n' || s[i] == '\t'))
		i++;
	len = (len - i) + 1;
	new = ft_strsub(s, i, len);
	return (new);
}
