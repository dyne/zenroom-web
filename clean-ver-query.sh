#!/bin/zsh

files=`find . -name '*\?ver*'`

for i in ${(f)files}; do
	mv ${i} ${i%\?*}
	git rm ${i}
	git add ${i%\?*}
done
