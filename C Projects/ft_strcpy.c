#include <unistd.h>
#include <stdio.h>

char	*ft_strcpy(char *s1, char *s2)
{
	int i;
	char temp;

	i = 0;
	while (s1[i])
	{
		temp = s2[i];
		s2[i] = s1[i];
		s1[i] = temp;
		i++;
	}
	return (0);
}

int	main()
{
	char a[] = "abc";
	char b[] = "def";

	printf ("%s\n", a);
	printf ("%s\n", b);
	ft_strcpy(a ,b);
	printf ("%s\n", a);
	printf ("%s\n", b);
	return (0);
}
