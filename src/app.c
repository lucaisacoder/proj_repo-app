#include <stdio.h>
#include "app.h"

int app_entry(void)
{
	printf("%s, %s\n", __FILE__, __FUNCTION__);
	return 0;
}

int app_api(void)
{
	printf("%s, %s\n", __FILE__, __FUNCTION__);
	return 0;
}
