module tshell;

import dir.utils;
import core.io;
import core.mem;

int main()
{
	io.testFunction();
	utils.test();

	ubyte* m = mem.allocate(20);
  *m = 0;
	mem.deallocate(m);

	ubyte[10] filePath;
	filePath[0] = 65;
	filePath[1] = 66;
	filePath[2] = 66;
	filePath[3] = 65;
	filePath[4] = 0;
	return io.v_open(filePath);
}
