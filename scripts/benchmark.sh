#!/bin/bash

if [[ ! -d 'Geekbench-5.2.2-Linux' ]]; then
	wget http://cdn.geekbench.com/Geekbench-5.2.2-Linux.tar.gz
	tar xf Geekbench-5.2.2-Linux.tar.gz 
fi

./Geekbench-5.2.2-Linux/geekbench5 
