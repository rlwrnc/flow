#include <stdio.h>
#define GLAD_GL_IMPLEMENTATION
#include "glad/gl.h"
#include "GLFW/glfw3.h"

int main(int argc, char *argv[])
{
	if (!glfwInit())
		return 1;

	GLFWwindow *window = glfwCreateWindow(1920, 1080, "flow", 0, 0);
	if (!window) {
		glfwTerminate();
		return 1;
	}

	glfwMakeContextCurrent(window);
	gladLoadGL((GLADloadfunc) glfwGetProcAddress);
	while (!glfwWindowShouldClose(window)) {
		glClearColor(0.0, 0.0, 0.0, 1.0);
		glClear(GL_COLOR_BUFFER_BIT);

		

		glfwSwapBuffers(window);
		glfwPollEvents();
	}

	glfwTerminate();
	return 0;
}
