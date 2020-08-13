# Tensorflow Lite - Prebuilt Lib

Built with: https://github.com/tensorflow/tensorflow/tree/d855adfc5a0195788bf5f92c3c7352e638aa1109 (matching the edgetpu version: https://coral.ai/docs/edgetpu/tflite-cpp/#build-your-project)</br>
To build new version use this how to: https://www.tensorflow.org/lite/guide/build_arm64 (also run build_lib.sh to get standard x86 lib files) and run `>> bash copy_files.sh --path==/PATH/TO/TENSORFLOW/LITE`

Note: GPU support for x86 does not work: follow this ticket (https://github.com/tensorflow/tensorflow/issues/34922)

## How to include in CMake
```CMake
ExternalProject_Add(TensorflowLitePrj
  GIT_REPOSITORY "https://github.com/j-o-d-o/tensorflow_lite_lib"
  CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${INSTALL_DIR}/tensorflow_lite
  INSTALL_COMMAND make install
)

SET(TENSORFLOW_LITE_LIB_X86_DIR ${INSTALL_DIR}/tensorflow_lite/lib/linux_x86_64/lib)
SET(TENSORFLOW_LITE_LIB_ARM_DIR ${INSTALL_DIR}/tensorflow_lite/lib/aarch64_armv8-a/lib)

SET(TENSORFLOW_LITE_INCLUDE_DIR ${INSTALL_DIR}/tensorflow_lite/include)
SET(TENSORFLOW_LITE_DEPENDENCIES_INCLUDE_DIR 
  ${INSTALL_DIR}/tensorflow_lite/include/tensorflow/lite/tools/make/downloads/flatbuffers/include
)
```