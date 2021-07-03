date3='date'
socat -T0.4 UDP4-LISTEN:10001,fork - | #10001 numaralı port dinlendi. Fork oluşturuldu.


while read -r m 
do 
	echo "UDP4-->:[$m] $(date3)" >> udplog.txt # belirtilen formatta udplog.txt dosyasına yazdırıldı.
done