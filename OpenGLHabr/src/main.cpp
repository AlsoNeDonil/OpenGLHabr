#include <GLFW/glfw3.h>
#include <iostream>

int main()
{
	if (!glfwInit())
	{
		std::cout << "Lol glfw is not ok" << std::endl;
		exit(1);
	}

	GLFWwindow* window = glfwCreateWindow(100, 100, "Title", nullptr, nullptr);

	system("pause");
	
}