Fbx-conv-installer-Linux
========================
A small set of scripts to automatically download and build fbx-conv for Linux distros.

Installation
========================
1. Install with your package manager: ```libpng-dev zlib1g-dev sed git wget make gcc```
2. Open terminal and ```cd``` to "Fbx-conv-installer-Linux" folder
3. Run ```chmod -R 755 .``` to make all files in the folder executable
4. Run ```./Install-x64.sh``` for installation on 64-bit systems, or ```./Install-x86.sh``` for old i386 systems. After downloading the necessary files, the installation setup of "FBX-SDK" will start, follow the setup instructions.

Usage of "Run.sh"
========================
```cd``` to fbx-conv and put your models in the "models" folder, run ```./Run.sh``` to convert the files. Converted files will be moved to the "converted" folder, all the files will be moved to the "done" folder. You can edit the "Run.sh" file to place the files directly in your project folder. (ex: "/user/game/models/3d" instead of "converted")

Troubleshooting
========================
**When i try to run ```./fbx-conv``` i get this error ```error while loading shared libraries: libfbxsdk.so: cannot open shared object file: No such file or directory```**

This happens because the system search by default for libfbxsdk.so and libfbxsdk.a on the "/usr/lib" directory, you can use either:
1. ```./fbx-conv.sh``` a script that run fbx-conv, but export the library path to current directory before doing it, you can use arguments.
2. ```./Run.sh``` run the shell script i use for batch file conversion, you can use arguments.
3. ```export LD_LIBRARY_PATH=.``` (before running ```./fbx-conv```) to make the system look for the  libraries at the current directory.
4. ```sudo cp {libfbxsdk.a,libfbxsdk.so} /usr/lib``` (at the fbx-conv directory) to copy the files to "/usr/lib"
