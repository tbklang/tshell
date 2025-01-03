module tshell;

import dir.utils;
import core.io;
import core.memory;

ubyte* outputPath;

/**
 * My main method
 */
int main()
{
	outputPath = "/dev/stdout";
	
	io.testFunction();
	utils.test();

	// allocate some memory
	ubyte* m = memory.allocate(20);
  *m = 0; // do something with it
	memory.deallocate(m); // de-allocate it

	ubyte[10] filePath;
	filePath[0] = 65;
	filePath[1] = 66;
	filePath[2] = 66;
	filePath[3] = 65;
	filePath[4] = 0;


	ubyte* msg = "Hello world from tshell";
	int fd = io.v_open(outputPath);

	// TODO: Add check for `fd`
	io.v_write(fd, msg, 23);
	
	return io.v_close(fd);
}
