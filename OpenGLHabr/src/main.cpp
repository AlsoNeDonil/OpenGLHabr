#include <GLFW/glfw3.h>
#include <Glad/glad.h>
#include <iostream>

int main()
{
	if (!glfwInit())
	{
		std::cout << "Lol glfw is not ok" << std::endl;
		exit(1);
	}

	GLFWwindow* window = glfwCreateWindow(800, 600, "Title", nullptr, nullptr);
	glfwMakeContextCurrent(window);
	if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
	{
		std::cout << "Lol glad is not ok" << std::endl;
	}

	GLuint vbo;
	glGenBuffers(1, &vbo);
	glBindBuffer(GL_ARRAY_BUFFER, vbo);
	glClearColor(0.2f, 0.5f, 0.7f, 1.0f);

	glClear(GL_COLOR_BUFFER_BIT);

	system("pause");
	
}