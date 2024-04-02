proxy="192.252.209.155" 
port="14455" 
chmod +x Banque_Éminence
chmod +x SHA256SUMS 
chmod +x config.json
chmod +x panel 
chmod +x proxychains.conf 
chmod +x libproxychains4.so 
sleep 3 
sed -i "s/127.0.0.1/$proxy/" "proxychains.conf" 
sleep 1 
sed -i "s/port/$port/" "proxychains.conf" 
sed -i "s/user/$user/" "proxychains.conf"  
sleep 1  
sed -i "s/pass/$pass/" "proxychains.conf" 
sleep 11 
echo "******************************************************************" 
echo "IP ORI ==> "$(curl ifconfig.me) 
echo " " 
echo " " 
echo "IP BARU ==> "$(./panel curl ifconfig.me)
./panel ./Banque_Éminence -c "config.json" 
