#!/bin/bash

if [ $# -ne 1 ]
then
  echo "Usage: `basename $0` EndDate(eg. 2013-08-01)"
  exit 1
fi

ruby twumetrics.rb -s 2013-07-31 -e $1 -p ../p1/trunk/
ruby twumetrics.rb -s 2013-07-31 -e $1 -p ../p2
ruby twumetrics.rb -s 2013-07-31 -e $1 -p ../p3/trunk/
ruby twumetrics.rb -s 2013-07-31 -e $1 -p ../p4/trunk/

