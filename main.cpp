//#includes are ALWAYS at top of file
#include <iostream>	//iostream is where std::cout and std::endl are defined

std::string func()
{
	//say hello
	return "hello";
}

int main()
{
	std::cout<<func()<<std::endl;
	return 0;
}