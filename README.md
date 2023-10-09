# OpenGL Starter

This project aims to kickstart OpenGL projects with GLFW and GLAD a bit more quickly than setting up everything manually from scratch (I am lazy so that explains why). It is a simple application that includes the example code from [GLFW's Web site](https://www.glfw.org/documentation.html) 

GLAD is already included in the project and GLFW is added as a submodule and will be fetched from Git by running `configure.sh` or `cmake -S . -B build/;`.

## Building OpenGL Starter

```
git clone https://github.com/b4keSn4ke/OpenGL_Starter.git;
cd OpenGL_Starter;
mkdir build

chmod +x run.sh configure.sh build.sh;

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



