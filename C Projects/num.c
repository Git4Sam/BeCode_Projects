#include <stdio.h>
#include <unistd.h>

int	main()
{
	int i;
	i = 1;
	char c;
	char ten;
	char one;
	while (i < 10)
	{
		c = '0' + i;
		
		if ((i % 3 == 0) && (i % 5 == 0))
		{
			write (1, "fizzbuzz\n", 9);
		}
		else if (i % 3 == 0)
		{
			write (1, "fizz\n", 5);
		}
		else if (i % 5 == 0)
		{
			write (1, "buzz\n", 5);
		}
		else
		{
			write (1, &c, 1);
			write (1, "\n", 1);
		}
		i++;
	}

	while ((i >= 10) && (i < 100))
	{
		ten = '0' + (i / 10);
		one = '0' + (i % 10);

		if ((i % 3 == 0) && (i % 5 == 0))
		{
			write (1, "fizzbuzz\n", 9);
		}
		else if (i % 3 == 0)
		{
			write (1, "fizz\n", 5);
		}
		else if (i % 5 == 0)
		{
			write (1, "buzz\n", 5);
		}
		else
		{
			write (1, &ten, 1);
			write (1, &one, 1);
			write (1, "\n", 1);
		}
		i++;
	}

	if ( i == 100)
	{
		write (1, "buzz\n", 5);
	}
}
