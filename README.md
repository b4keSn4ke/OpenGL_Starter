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
By default the `configure.sh` scripts sets the `DEBUG_MODE` flag to `OFF`, setting it to `ON` would allow you to use the `DEBUG_MODE` define via the pre-processor in your C++ code.

To generate the project with `DEBUG_MODE` set to `ON`, simply add the DEBUG argument to the `configure.sh` script.

```
./configure.sh DEBUG
```

If you don't want to generate the project in `DEBUG_MODE`, simply run `configure.sh`
```
./configure.sh
```

After having generated your project, simply run `build.sh` to build the project and `run.sh` to run your project.

```
./configure.sh;
./build.sh
./run.sh
```

## Additional Submodules

You can add addtional submodules in the folder created for this effect (`vendor`) by typing the following command

```
git submodule add https://github.com/[USER]/[GITREPO].git vendor/[SUBMODULE_NAME]
```

Make sure to commit your change after having added a submodule.



