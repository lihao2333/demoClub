#!/bin/bash
if [[ ! $@ =~ ^\-.+ ]]
then

  cat $DEMO_ROOT/$@.help 
#  groff -me -Tutf8 -Kutf8 $DEMO_ROOT/$@.help |less -R
fi
while getopts "hle:" arg #选项后面的冒号表示该选项需要参数
do
        case $arg in
             h)
                echo "demo py  		查看py文件" #参数存在$OPTARG中
                echo "demo -l  		查看所有选项" #参数存在$OPTARG中
                echo "demo -e py	编辑py的帮助文件" #参数存在$OPTARG中
                ;;
             l)
			   cd $DEMO_ROOT
			   ls  |grep help| sed "s/\(.*\)\..*/\1/"
                ;;
             e)

			   vim $DEMO_ROOT/$OPTARG.help
                ;;
             ?)  #当有不认识的选项的时候arg为?
            echo "unkonw argument"
        exit 1
        ;;
        esac
done

