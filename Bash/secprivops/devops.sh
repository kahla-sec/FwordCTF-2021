#!/bin/bash
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:"
exec 2>/dev/null
name="deploy"
while [[ "$1" =~ ^- && ! "$1" == "--" ]]; do case $1 in
  -V | --version )
    echo "Beta version"
    exit
    ;;
  -d | --deploy ) 
     deploy=1
     ;;
  -p | --permission )
     permission=1
     ;;
esac; shift; done
if [[ "$1" == '--' ]]; then shift; fi

echo -ne "Welcome To Devops Swiss Knife \o/\n\nWe deploy everything for you:\n"


if [[ deploy -eq 1 ]];then
        echo -ne "Please enter your true name if you are a shinobi\n"  
        read -r name
        eval "function $name { terraform init &>/dev/null && terraform apply &>/dev/null ; echo \"It should be deployed now\"; }"
        export -f $name
fi

isAdmin=0
# Ofc only admins can deploy stuffs o//
if [[ $isAdmin -eq 1 ]];then
        $name
fi

# Check your current permissions admin-san
if [[ $permission -eq 1 ]];then
        echo "You are: " 
        id
fi
