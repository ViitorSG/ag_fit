#!/bin/bash

environment="qa"

read -p "Qual ambiente [qa, prod]: " environment

echo "Iniciando build do app IOS - Environment: $environment"

while true; do
    read -p "Você setou a buildNumber na KryktoAppSettings? y[SIM] n[NAO]:" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Erro: Você precisa escolher y[SIM] ou n[NAO].";;
    esac
done

rm -rf  ../base_app/ios/Pods
rm -rf  ../base_app/ios/Podfile.lock

pod repo update

cd ../base_app/ && \
cp ios/Runner/Firebase/krykto-$environment-GoogleService-Info.plist ios/Runner/GoogleService-Info.plist && \
flutter clean && \
flutter build ios --obfuscate --split-debug-info=build/app/outputs/symbols --dart-define=ENV=$environment

echo "Termino da geração build do app IOS - Environment: $environment"