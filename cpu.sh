#!/bin/bash
cpu_idle=`mpstat |grep all|awk '{print $13}' |cut -f 1 -d "."`
cpu_utilisation=`expr 100 - $cpu_idle`
mem_used=`free -h |grep Mem |awk '{print $3}'`
#aws sns publish --topic-arn "arn:aws:sns:ap-south-1:909603065082:Default_CloudWatch_Alarms_Topic" --message "cpu utilisation=$cpu_utilisation % memory used=$mem_used"
