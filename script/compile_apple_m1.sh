#! /bin/bash

rm -rf  ../base_app/ios/Pods
rm -rf  ../base_app/ios/Podfile.lock

arch -x86_64 pod repo update

for d in ../*/
do
	if [ "${d%/}" != "../script" ] && [ "${d%/}" != "../keys" ]
		then
		echo "Entrando na pasta ${d%/}";
		cd "${d%/}";
		echo "Limpando ... ";
		rm pubspec.lock
		flutter clean;
		echo "Executando pub get ... ";
		flutter pub get;
	fi
done
exit 0;
		

