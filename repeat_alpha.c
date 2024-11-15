#include <unistd.h>

int	check(int ac, char  *str)
{
	int	i;
	char	 count;

	i = 0;
	if (ac == 2)
	{
		while (str[i] != '\0')
		{
			if (str[i] >= 'a' && str[i] <= 'z')
			{
				count = (str[i] - 97) + 1;
				while (count--)
				{
				write (1, &str[i], 1);
				}
			}
			else if (str[i] >= 'A' && str[i] <= 'Z')
			{
				count = (str[i] - 65) + 1;
				while (count --)
				{
					write (1, &str[i], 1);
				}
			}
			else
			{
				write (1, &str[i], 1);
			}
			i++;
		}
	}
	else
	{
		write (1, "\n", 1);
	}
	return (0);

}

int	main(int ac, char **ar)
{
	check(ac, ar[1]);
	return (0);
}
