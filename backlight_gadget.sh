#-- Ubuntu Backlight Gadget BY:Hinux Chau --#
#!/bin/bash

if [[ $(id -u) != '0' ]]; then
	echo -e "\nPlease enter sudo su to run me as root";
	exit;
fi

bright=1;
max_bright=$( expr $(cat /sys/class/backlight/intel_backlight/max_brightness) / 10000 );
while [[ 1 ]]; do
	echo -e "\nPlease input brightness(integer 1-$max_bright) or send q/Q to quit:";
	read bright;
	if [[ $bright == 'q' ]] || [[ $bright == 'Q' ]]; then
		echo -e '\nBye!~';
		exit;
	fi
	if [[ $bright -lt 1 ]] || [[ $bright -gt $max_bright ]]; then
		echo -e '\n**ERROR! Please Enter Correct Integer(2-$max_bright)**'
		continue;
	fi
	echo $(( $bright * 10000 )) > /sys/class/backlight/intel_backlight/brightness
	echo -e '\nSuccess!';
done

echo -e '\nBye~~'
