
update:
	cp -rv "$(HOME)/.i2p/i2psnark/"* ./ -v
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
	ls -lah | sed "s|`whoami`|user|g" >> index.html
	echo '</body>' >> index.html
	echo '</html>' >> index.html