#!/bin/bash

#export PATH=$CONDA_PREFIX/bin:$PATH

mkdir -p build

hipcc -D__HIP_PLATFORM_HCC__ src/hello_hip.cpp -o build/hello_hip
./build/hello_hip

hipcc -D__HIP_PLATFORM_HCC__ -lrocblas -L$CONDA_PREFIX/lib src/hello_rocblas.cpp -o build/hello_rocblas
./build/hello_rocblas

hipcc -D__HIP_PLATFORM_HCC__ -lrocfft -L$CONDA_PREFIX/lib src/hello_rocfft.cpp -o build/hello_rocfft
./build/hello_rocfft

hipcc -D__HIP_PLATFORM_HCC__ src/hello_rocprim.cpp -o build/hello_rocprim
./build/hello_rocprim

hipcc -D__HIP_PLATFORM_HCC__ -lrocrand -L$CONDA_PREFIX/lib src/hello_rocrand.cpp -o build/hello_rocrand
./build/hello_rocrand

hipcc -D__HIP_PLATFORM_HCC__ -lrocsparse -L$CONDA_PREFIX/lib src/hello_rocsparse.cpp -o build/hello_rocsparse
./build/hello_rocsparse

hipcc -D__HIP_PLATFORM_HCC__ -lrccl -L$CONDA_PREFIX/lib src/hello_rccl.cpp -o build/hello_rccl
./build/hello_rccl

hipcc -D__HIP_PLATFORM_HCC__ -lMIOpen -L$CONDA_PREFIX/lib src/hello_miopen.cpp -o build/hello_miopen
./build/hello_miopen

hipcc -D__HIP_PLATFORM_HCC__ -lrocsolver -lrocblas -L$CONDA_PREFIX/lib src/hello_rocsolver.cpp -o build/hello_rocsolver
./build/hello_rocsolver

hipcc -D__HIP_PLATFORM_HCC__ src/hello_rocthrust.cpp -o build/hello_rocthrust
./build/hello_rocthrust

hipcc -D__HIP_PLATFORM_HCC__ src/hello_rocalution.cpp -o build/hello_rocalution
./build/hello_rocalution

hipcc -D__HIP_PLATFORM_HCC__ src/hello_hipcub.cpp -o build/hello_hipcub
./build/hello_hipcub

hipcc -D__HIP_PLATFORM_HCC__ -lhipblas -L$CONDA_PREFIX/lib src/hello_hipblas.cpp -o build/hello_hipblas
./build/hello_hipblas

hipcc -D__HIP_PLATFORM_HCC__ -lhipsparse -L$CONDA_PREFIX/lib src/hello_hipsparse.cpp -o build/hello_hipsparse
./build/hello_hipsparse

hipcc -D__HIP_PLATFORM_HCC__ -I$CONDA_PREFIX/rocrand/include -lhiprand -L$CONDA_PREFIX/lib src/hello_hiprand.cpp -o build/hello_hiprand
./build/hello_hiprand

hipcc -D__HIP_PLATFORM_HCC__ -I$CONDA_PREFIX/hipfft/include -lhipfft -L$CONDA_PREFIX/lib src/hello_hipfft.cpp -o build/hello_hipfft
./build/hello_hipfft

