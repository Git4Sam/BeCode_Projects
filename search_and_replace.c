#include <unistd.h>

int	check(int ac, char *str, char a, char b)
{
	int i;

	i = 0;
	if (ac == 4)
	{
		while (str[i] != '\0')
		{
			if (str[i] == a)
			{
				str[i] = b;
			}
			i++;
		}
		write (1, str, i);
	}
	else
	{
		write (1, "\n", 1);
	}
	return (0);
}

int     main(int ac, char **str)
{
        if (ac == 4)
        {
                check(ac, str[1], str[2][0], str[3][0]);
        }
        else
        {
                write(1, "\n", 1);
        }
        return (0);
}
