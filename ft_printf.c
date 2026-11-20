/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: joaooli2 <joaooli2@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026/11/17 15:54:43 by joaooli2          #+#    #+#             */
/*   Updated: 2026/11/19 17:10:32 by joaooli2         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

int	printf(const char *format, ...)
{
	int i;
	char *str;

	i = 0;
	if (format[i])
		str[i] = write(1, '%c', 1);
		i++;
	return(str);
}

int main()
{
	printf("hello my name is Laura and i'm 23 years old\n");
	printf("hello my name is %s and i'm %d years old\n", "Laura", 22);
}