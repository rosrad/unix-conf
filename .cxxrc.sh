# .cxxrc
##for c++ header and lib path
homecxx=~/source/c++/
libcxx=$homecxx/libcxx
libcxxabi=$homecxx/libcxxabi/
clang_path=~/install/llvm/
libclang=$clang_path/lib
gcc_4_8_2=~/install/gcc-4.8.2

#include ~source/sh/utils.sh
. ~/source/sh/utils.sh

clang_inc=$libcxx/include:$libcxxabi/include
clang_lib=$libcxx/lib:$libcxxabi/lib:$libclang
clang_bin=~/install/llvm/bin
export CLANG_BIN=$clang_bin
#export GCCINC=`join_subdirs ${gcc_4_8_2}/include`
gcc_internal_inc=$gcc_4_8_2/include/c++/4.8.2
gcc_external_inc=$gcc_internal_inc/gnu:$gcc_internal_inc/ext:$gcc_internal_inc/org:$gcc_internal_inc/debug:$gcc_internal_inc/profile:$gcc_internal_inc/ext:$gcc_internal_inc/bits
gcc_inc=$gcc_internal_inc:$gcc_internal_inc/x86_64-unknown-linux-gnu:
gcc_lib=$gcc_4_8_2/lib64
gcc_bin=$gcc_4_8_2/bin

use_clang=0

if [ $use_clang != 1 ];then 
   CC=gcc
   CXX=g++
   #CPLUS_INCLUDE_PATH=$gcc_inc
   #LD_LIBRARY_PATH=$gcc_lib:$clang_lib
   #CBIN_PATH=$gcc_bin:$clang_bin
else
   CC=clang
   CXX=clang++	
   CPLUS_INCLUDE_PATH=$clang_inc:$CPLUS_INCLUDE_PATH
fi

   CBIN_PATH=$clang_bin
   LD_LIBRARY_PATH=$clang_lib:$LD_LIBRARY_PATH
export CC
export CXX
export CPLUS_INCLUDE_PATH
export LD_LIBRARY_PATH
export CBIN_PATH
export LIBRARY_PATH=$LD_LIBRARY_PATH
