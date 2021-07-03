date1='date'

for a in {1..10..1} # tcp için paket gönderme işlemi
	do 
	echo "{id:'171220054', message:'packet from client', timestamp:'$date1'}" | socat - tcp4:127.0.0.1:5001 #belirtilen port ve ip adresine, belirtilen formattaki gibi id,mesaj ve güncel zaman bilgileri 10 kere yollandı.
	echo "$a - CLIENT-->{TCP4}: {$message} {$date1}" >> client1.txt #belirtilen formattaki gibi mesaj ve güncel zaman client1.txt dosyasına yazdırıldı.
	done
for b in {1..10..1} # udp için paket gönderme işlemi
	do 
	echo "{id:'171220054', message:'packet from client', timestamp:'$date1'}" | socat - UDP4-DATAGRAM:127.0.0.1:5001 #belirtilen port ve ip adresine, belirtilen formattaki gibi id,mesaj ve güncel zaman bilgileri 10 kere yollandı.
	echo "$b - CLIENT-->{UDP4}: {$message} {$date1}" >> client1.txt #belirtilen formattaki gibi mesaj ve  güncel zaman client1.txt dosyasına yazdırıldı.
	done