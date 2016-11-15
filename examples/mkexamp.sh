#!/bin/bash

# List of formats (short names).
read -d '' formats << EOF
c
clojure
csharp
h
hpp
ini
java
javaprop
js
json
lua
m4
matlab
octave
php
pl
py
rpm
scheme
sh
swift
tex
xcode
cmake
EOF

cd "$(git rev-parse --show-toplevel)"

./autorevision.sh -o autorevision.cache -t h

for type in ${formats}; do
	./autorevision.sh -o autorevision.cache -f -t "${type}" > "examples/autorevision.${type}"
done
