#!/bin/sh


# Primero generamos el html

hugo -D

#Primero subimos los cambios hechos a nuestro repositorio principal (el contenido de public está añadido a .gitignore):

git add .
git commit -am "Cambios"
git push

#Una vez subido, copiamos los archivos generados de public a nuestro repositorio secundario:

rm -rf ../hugo-static/*
cp -R public/* ../hugo-static/

#Ahora nos movemos a ese directorio y subimos los cambios a nuestro github

cd ../hugo-static
git add .
git commit -am "Cambios"
git push
