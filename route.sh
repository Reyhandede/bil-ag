date2='date'

udp4islem(){ #udp4 için client dinleme fonksiyonu
	socat -T0.4 UDP4-LISTEN:5001,fork stdout | #gelen udp4 paketleri dinleniyor...
	while read -r m #gelen her mesaj için okuma döngüsü kuruldu.
	do
		mudp="$m" 
		echo "ROUTER-->UDP4:[$mudp] {$date2}" >> router.txt #belirtilen formattaki gibi router.txt dosyasına mesaj ve güncel zaman yazdırıldı.
		echo $mudp | socat - UDP4:127.0.0.1:10001 #udp4 paketleri 10001 numaralı porta gönderildi.
	done
}
tcp4islem(){#tcp4 için client dinleme fonksiyonu
	socat -T0.4 tcp4-l:5001,fork stdout | #gelen tcp4 paketleri dinleniyor...
	while read -r m #gelen her mesaj için okuma döngüsü kuruldu.
	do
		mtcp="$m"
		echo "ROUTER-->TCP4:[$mtcp] {$date2}" >> router.txt #belirtilen formattaki gibi router.txt dosyasına mesaj ve güncel zaman yazdırıldı.
		echo $mtcp | socat - TCP4:127.0.0.1:20002 #tcp4 paketleri 20002 numaralı porta gönderildi.
	done
}