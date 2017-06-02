#!/bin/bash

ping -c 4 10.0.1.1 | grep "4 packets transmitted, 4 received, 0% packet loss, time" &> /dev/null
if [ $? == 0 ]; then
        echo "Ping to 10.0.1.1 PASSED"
else
        echo "Ping to 10.0.1.1 FAILED"
fi

ping -c 4 192.168.2.1 | grep "4 packets transmitted, 4 received, 0% packet loss, time" &> /dev/null
if [ $? == 0 ]; then
        echo "Ping to 192.168.2.1 PASSED"
else
        echo "Ping to 192.168.2.1 FAILED"
fi

ping -c 4 172.64.3.1 | grep "4 packets transmitted, 4 received, 0% packet loss, time" &> /dev/null
if [ $? == 0 ]; then
        echo "Ping to 172.64.3.1 PASSED"
else
        echo "Ping to 172.64.3.1 FAILED"
fi


traceroute -m  3  10.0.1.1 | grep "* * *" &> /dev/null
if [ $? == 0 ]; then
        echo "Traceroute to 10.0.1.1 FAILED"
else
        echo "Traceroute to 10.0.1.1 PASSED"

fi

traceroute -m  3  192.168.2.1 | grep "* * *" &> /dev/null
if [ $? == 0 ]; then
        echo "Traceroute to 192.168.2.1 FAILED"
else
        echo "Traceroute to 192.168.2.1 PASSED"
fi

traceroute -m  3  172.64.3.1 | grep "* * *" &> /dev/null
if [ $? == 0 ]; then
        echo "Traceroute to 172.64.3.1 FAILED"
else
        echo "Traceroute to 172.64.3.1 PASSED"
fi

ping -c 4 192.168.2.2 | grep "4 packets transmitted, 4 received, 0% packet loss, time" &> /dev/null
if [ $? == 0 ]; then
        echo "Ping to 192.168.2.2 PASSED"
else
        echo "Ping to 192.168.2.2 FAILED"
fi


ping -c 4 172.64.3.10 | grep "4 packets transmitted, 4 received, 0% packet loss, time" &> /dev/null
if [ $? == 0 ]; then
        echo "Ping to 172.64.3.10 PASSED"
else
        echo "Ping to 172.64.3.10 FAILED"
fi


traceroute -m 3 192.168.2.2 | grep "* * *" &> /dev/null
if [ $? == 0 ]; then
        echo "Traceroute to 192.168.2.2 FAILED"
else
        echo "Traceroute to 192.168.2.2 PASSED"
fi

traceroute -m 3 172.64.3.10 | grep "* * *" &> /dev/null
if [ $? == 0 ]; then
        echo "Traceroute to 172.64.3.10 FAILED"
else
        echo "Traceroute to 172.64.3.10 PASSED"
fi


wget -q 192.168.2.2
if [ $? == 0 ]; then
        echo "wget to 192.168.2.2 PASSED"
fi

wget -q  172.64.3.10
if [ $? == 0 ]; then
        echo "wget to 172.64.3.10 PASSED"
fi

