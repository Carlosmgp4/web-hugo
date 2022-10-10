#!/bin/sh


# Generar html

hugo -D

#Subimos los cambios al repositior principal

git add .
git commit -am "Cambios"
git push

#Copiamos los archivos estaticos generados al repositotio externo previamente creado, antes nos aseguramos que ningun archivo existente nos hace fallar el despliegue

rm -rf ../hugo-static/*
cp -R public/* ../hugo-static/

#Subimos los cambios del respositio externo

cd ../hugo-static
git add .
git commit -am "Cambios"
git push
