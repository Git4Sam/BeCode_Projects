#include <unistd.h>

int	call(int ac, char *str)
{
	int i;

	i = 0;
	if (ac == 2)
	{
		while (str[i] != '\0')
		{
			if (str[i] == 'a')
			{
				write (1, "a", 1);
				break;
			}
			else
			{
				write (1, "\n", 1);
				i++;
			}
		}
	}

	else
	{
		write (1, "a\n", 2);
	}
	return (0);
}

int	main()
{
	int	num;

	num = 2;
	char words[] = "ahvhgahfggs";

	call (num, words);
	return (0);
}
