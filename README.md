# Tensorflow Lite - Prebuilt Lib

Built with: https://github.com/tensorflow/tensorflow/tree/094da7eaa9d802ee676170f2df58ded528da52d9 </br>
To build new version use this how to: https://www.tensorflow.org/lite/guide/build_arm64 and run `>> bash copy_files.sh`

## How to include in CMake
```CMake
ExternalProject_Add(TensorflowLitePrj
  GIT_REPOSITORY "https://github.com/j-o-d-o/tensorflow_lite_lib"
  CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${INSTALL_DIR}/tensorflow_lite
  INSTALL_COMMAND make install
)
```