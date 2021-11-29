#!/bin/bash
# 26.07.2021 melancholic mood
isimSor(){
	if [[ -z "$isim" ]]; then # $isim boş ise bu blok çalışır.
		echo "Linux: Adınız nedir?"
		read isim
		if [[ ${#isim} < 1 ]]; then
		# echo ${#isim} # $isim uzunluğunu -kaç karakter ise- çıktılar.
		echo "Linux: Adınız boş bırakılamaz"
			isimSor
		fi
	fi
}

seviyorMu(){
	isimSor
	echo "Beni seviyor musun? [seviyorum/sevmiyorum/kararsızım] "
	echo -n $isim:' '
	read yanit

	if [[ ("$yanit" == "seviyorum") ]]; then
		sleep 1
		#clear
		sleep 1
		echo
		echo '         \{^_^}/               '
		echo
		sleep 1
		echo 'Linux: Ben de seni seviyorum arkadaşım' $isim
		echo 
		echo '           @-)--               '
		echo 
	elif [[ ($yanit == "sevmiyorum") ]]; then
		sleep 1
		#clear
		echo
		echo "Linux: Senin gibi arkadaşın var ya... *@!"
		sleep 1
		echo
		echo "Linux: $isim, son kararın mı?!"
		echo
		sleep 1
		seviyorMu
	elif [[ ($yanit == "kararsızım") ]]; then
		sleep 1
		#clear
		echo
		echo "Linux: Daha hızlı düşünüp karar verebilirmisin $isim?!"
		sleep 1
		echo
		echo "Linux: Süre doldu??"
		echo
		sleep 1
		seviyorMu
	elif [[ -z "$yanit" ]]; then
		sleep 1
		#clear
		echo
		echo "Linux: Cevabını bekliyorum, lütfen boş geçme $isim."
		sleep 1
		echo
		echo "Linux: Evet, ne düşünüyorsun?"
		echo
		sleep 1
		seviyorMu
	else
		echo
		#clear
		sleep 1
		echo "Linux: Ne dediğin anlaşılmadı?"
		echo
		sleep 1
		seviyorMu
	fi
}

seviyorMu

exit

