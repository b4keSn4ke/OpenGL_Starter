# OpenGL Starter

This project aims to kickstart OpenGL projects a bit more easily by integrating GLFW, GLAD, stb_image and a basic build system using CMake. As for now it will only work with Linux. 
I basically made this cause I am lazy and don't feel like starting over again with every projects.

OpenGL_Starter comes with a simple application that includes the example code from [GLFW's Web site](https://www.glfw.org/documentation.html) 

## Building OpenGL Starter

We first need to clone the repo, create a build folder inside the project's folder and give the following scripts execution rights. 
```
git clone https://github.com/b4keSn4ke/OpenGL_Starter.git;
cd OpenGL_Starter;
mkdir build

chmod +x run.sh configure.sh build.sh;
```

You can then use the `configure.sh` script to generate the project with its dependencies and use the other scripts in order to build and run the project.

```
./configure.sh;
./build.sh
./run.sh
```

By default the `configure.sh` scripts sets the `DEBUG_MODE` flag to `ON`, which could be used via the pre-processor in your C++ code.

If you prefer not runnin in `DEBUG_MODE`, you can simply uncomment the following line in `configure.sh`:

```
#!/usr/bin/bash

# Build with DEBUG_MODE=ON
#cmake -S . -B build/ -DDEBUG_MODE=ON;
# Build with DEBUG_MODE=OFF
cmake -S . -B build/ -DDEBUG_MODE=OFF;
```

## Additional Submodules

You can add addtional submodules in the folder created for this effect (`vendor`) by typing the following command

```
git submodule add https://github.com/[USER]/[GITREPO].git vendor/[SUBMODULE_NAME]
```

Make sure to commit your change after having added a submodule.



