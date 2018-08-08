if [ -z $DEMO_ROOT ];then
  echo export DEMO_ROOT=`pwd` >>~/.bashrc
fi
if [ -h /usr/bin/demo ];then
  sudo ln -sf `pwd`/demo.sh /usr/bin/demo
fi
