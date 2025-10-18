#!/bin/bash
echo "=== Verificando certificados en el servidor ==="

echo "1. Archivos en /etc/ssl/latitudarg:"
ls -la /etc/ssl/latitudarg/

echo -e "\n2. Archivos en /etc/ssl/secureapprove:"
ls -la /etc/ssl/secureapprove/

echo -e "\n3. Verificando formato PEM latitudarg:"
head -n 3 /etc/ssl/latitudarg/latitudarg.com.crt

echo -e "\n4. Verificando formato PEM secureapprove:"
head -n 3 /etc/ssl/secureapprove/secureapprove.com.crt

echo -e "\n5. Permisos y propietario:"
ls -la /etc/ssl/latitudarg/latitudarg.com.*
ls -la /etc/ssl/secureapprove/secureapprove.com.*

echo -e "\n6. Verificando que no estén cifradas las keys:"
openssl rsa -in /etc/ssl/latitudarg/latitudarg.com.key -check -noout
openssl rsa -in /etc/ssl/secureapprove/secureapprove.com.key -check -noout