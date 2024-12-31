module tshell;

import dir.utils;
import core.io;

int main()
{
	io.testFunction();
	utils.test();

	
	return io.v_open("/dev/stdout");
}
