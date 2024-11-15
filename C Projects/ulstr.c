#include <unistd.h>

int	rev(int ac, char *str)
{
	int i;

	i = 0;
	if (ac == 2)
	{
		while (str[i] != '\0')
		{
			if (str[i] >= 'a' && str[i] <= 'z')
			{
				str[i] = str[i] - 32;
			}
			else if (str[i] >= 'A' && str[i] <= 'Z')
			{
				str[i] = str[i] + 32;
			}
		i++;
		}
		write (1, str, i);
		write (1, "\n", 1);
	}
	else
	{
		write (1, "\n", 1);
	}
	return (0);
}

int main(int ac, char **av)
{
    if (ac < 2) // Check if there is at least one argument besides the program name
    {
        write(1, "\n", 1); // Print a newline if no string is provided
        return (0);
    }

    char str[100];

    // Copy input string into the modifiable array
    for (int i = 0; av[1][i] && i < 99; i++)
        str[i] = av[1][i];
    str[99] = '\0'; // Ensure null-termination

    rev(ac, str); // Call the rev() function

    return (0);
}
