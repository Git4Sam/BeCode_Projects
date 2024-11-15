#include <unistd.h>

int	success(int ac, char **str)
{
	int i;

	i = 0;

	if (ac == 2)
	{
		while (str[1][i] != '\0')
		{
			write (1, &str[1][i], 1);
			i++;
		}
	}
	else
	{
		write (1, "\n", 1);
	}
	return (0);
}

int	main(int ac, char **str)
{
	success (ac, str);
	return (0);
}
