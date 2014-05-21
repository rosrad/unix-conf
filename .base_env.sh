##this is some basic enviroment varables
##for GOPATH
GOPATH=~/source/golang/go/:~/source/golang/workspace/
export GOPATH
gopath=~/source/golang/go/
##for PATH

home_sh=~/source/sh
LOCAL_BIN=~/local/bin

PATH=$PATH:$HOME/bin:$openfst/bin:$openfst/lib:$home_sh:$home_sh/mail
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

## for send mail
export MAIL_DIR=~/source/mail/
export MAIL_SENDER=$MAIL_DIR/sender/

