# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] &&   . /usr/share/bash-completion/bash_completion
unset SSH_ASKPASS
# User specific aliases and functions

#. /opt/intel/impi/4.0.3/bin64/mpivars.sh
#export I_MPI_DEVICE=ssm
#export I_MPI_DEVICE=shm
#export I_MPI_DEVICE=rdma
#export I_MPI_PIN=0
#export OMP_NUM_THREADS=1

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

## load the basic env file
if [ -f ~/.base_env.sh ];then
    . ~/.base_env.sh
fi

#add the alias script
if [ -f ~/.alias.sh ];then
    . ~/.alias.sh
fi
