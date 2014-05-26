# this file is built for some useful script

#for alias
alias em="emacs -nw"
alias emc="emacsclient -t"
alias mcheck="tail -f ${m_log}"
alias mrun=run_matlab
alias dfind=find_in_dir
alias pk="pkill -9 -u ren "
alias pg="pgrep -u ren"
#some functions to run matlab script in a console terminal. 
m_log=~/work/tmp/matlab.log
run_matlab() {
    pwd=`pwd`
    echo "run matlab $@"
    cmd="addpath ${pwd} ; addpath /home/14/ren/source/matlab/config;"
    wrap="'$@'"
    matlab -nojvm -nodisplay -nosplash -r "${cmd};wrap_template(${wrap});exit" -logfile $m_log
}

#some function for debug 

find_in_dir() {
    if [ $# -lt 2 ]; then
	echo "no enough parameters!"
	exit 0
    fi

    path=$1
    content=$2
    if [ $# -eq 3 ] && [ $3 -ne 0 ]; then
	find $path -type f |xargs grep -i "${content}"|awk -F: '{print $1,$2}'|sort|uniq
    else
	find $path -type f |xargs grep -i "${content}"|awk -F: '{print $1}'|sort|uniq
    fi	
}

