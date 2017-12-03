# -----------------------------------------------------------------------------
# Project name   :
# File name      : rename_NN_.sh
# Created date   : Nov-19-2017 07:40
# Author         : Huy-Hung Ho
# Last modified  : Nov-19-2017 07:40
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

for i in `dir`
do
	mv $i `echo $i | sed 's/NN_//g'`
done
