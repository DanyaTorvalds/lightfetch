#!/bin/bash

mkdir -p build
g++ src/main.cpp -o build/lightfetch
echo 'Built lightfetch executable successfully! (build/lightfetch)'
