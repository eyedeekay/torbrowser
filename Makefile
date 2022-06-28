
update: all index

all:
	./copy.sh
	./add.sh

index:
	echo '<!DOCTYPE html>' > index.html
	echo '<html>' >> index.html
	echo '<head>' >> index.html
	echo '<meta charset="utf-8">' >> index.html
	echo "<title>IDK's Wierd Tor Browser Mirror</title>" >> index.html
	echo '<link rel="stylesheet" href="/style.css">' >> index.html
	echo '<script src="/script.js"></script>' >> index.html
	echo '</head>' >> index.html
	echo '<body>' >> index.html
	pandoc README.md >> index.html
	find . -name 'tor*' -exec sh -c 'echo - [{}]\({}\) | sed "s|`whoami`|user|g" | sed "s|./||g"' \; | sort | pandoc >> index.html
	#>> index.html
	echo '</body>' >> index.html
	echo '</html>' >> index.html
	git commit -am "update index" && git push --all