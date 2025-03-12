# To change the cuda arch, edit Makefile.am and run ./build.sh

extracflags="-mfpu=neon -D_REENTRANT -falign-functions=16 -falign-jumps=16 -falign-labels=16 -fuse-ld=lld-14"

./configure CC=clang-14 CXX=clang++-14 CFLAGS="-O3 -march=armv7-a $extracflags" CXXFLAGS="-O3 $extracflags -march=armv7-a"
