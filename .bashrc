# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
unset SSH_ASKPASS
# User specific aliases and functions

#. /opt/intel/impi/4.0.3/bin64/mpivars.sh
#export I_MPI_DEVICE=ssm
#export I_MPI_DEVICE=shm
#export I_MPI_DEVICE=rdma
#export I_MPI_PIN=0
#export OMP_NUM_THREADS=1

#for module load
#module load openmpi-1.6.3
#module load uge



#include ~source/sh/utils.sh
#this should always be the top
#. ~/source/sh/utils.sh




#for export var
##for cxx compiler
if [ -f ~/.cxxrc.sh ];then
    . ~/.cxxrc.sh
fi
## for go cross compile 
go_cross_cmp=~/source/golang/golang-crosscompile/crosscompile.bash
if [ -f $go_cross_cmp ]; then
    . $go_cross_cmp
fi
##for GOPATH
GOPATH=~/source/golang/go/:~/source/golang/workspace/
export GOPATH
gopath=~/source/golang/go/
##for PATH

home_sh=~/source/sh
LOCAL_BIN=~/local/bin

PATH=$PATH:$HOME/bin:$openfst/bin:$openfst/lib:$home_sh
PATH=$gopath/bin:$CBIN_PATH:$LOCAL_BIN:$PATH
##for RTAGS

RTAGS=1

if [ $RTAGS -ne 0 ] ;then
    rtags_path=~/source/c++/rtags/bin:~/local/cxxcompile
    PATH=$rtags_path:$PATH
fi
export ALTERNATE_EDITOR=""
export LOCAL_BIN
export PATH
export LOCAL_ROOT_DIR=/bin:/boot:/cgroup:/dev:/etc:/home:/home.org:/lib:/lib64:/lost+found:/media:/mnt:/net:/opt:/opt14:/proc:/root:/sbin:/selinux:/srv:/sys:/tmp:/usr:/var:
export work=/Work14/ren/
export monc=$work/monc
##for proxy
export http_proxy="http://proxy.nagaokaut.ac.jp:8080"
export https_proxy="http://proxy.nagaokaut.ac.jp:8080"
export ftp_proxy="http://proxy.nagaokaut.ac.jp:8080"
#if [ `hostname` != "node13" ] ; then
#    `ssh node13`
#fi

#add the alias script
if [ -f ~/.alias.sh ];then
    . ~/.alias.sh
fi
