/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   close_pipe.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ddo-carm <ddo-carm@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/02/02 17:59:16 by ddo-carm          #+#    #+#             */
/*   Updated: 2025/04/18 15:39:50 by ddo-carm         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "extras.h"

//info --> closes both fds in a pipe

void	close_pipe(int *fd)
{
	close(fd[0]);
	close(fd[1]);
}
