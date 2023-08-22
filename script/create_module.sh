#!/bin/bash

echo "Criando o modulo - $1"

cd ..

flutter create -t module $1

cd $1

rm -rf .android \
       .dart_tool \
       .idea \
       .ios \
       .gitignore \
        test \
        lib/main.dart

echo "Modulo - $1 - criado com sucesso."


