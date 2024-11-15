#include <unistd.h>

int	replace(int ac, char *str)
{
	int i;

	i = 0;
	if (ac == 2)
	{
		while (str[i] != '\0')
		{
			if (str[i] >= 'A' && str[i] <= 'Z')
			{
				if (str[i] + 13 > 'Z')
				{
					str[i] = str[i] - 13;
				}
				else
				{
					str[i] = str[i] + 13;
				}
			}
			else if (str[i] >= 'a' && str[i] <= 'z')
			{
				if (str[i] + 13 > 'z')
				{
					str[i] = str[i] - 13;
				}
				else
				{	
					str[i] = str[i] + 13;
				}
			}
			write (1, &str[i], 1);
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
	replace(ac, str[1]);
	return(0);
}
