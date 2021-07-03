date3='date'
socat tcp4-l:20002,fork - | #20002 numaralı port dinlendi. Fork oluşturuldu.
while read -r m 
do 
	echo "TCP4-->:[$m] $(date3)" >> tcplog.txt # belirtilen formatta udplog.txt dosyasına yazdırıldı.
done