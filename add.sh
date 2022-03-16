
files=$(git status -u)
for f in $files; do
	if [ -f "$f" ]; then
		echo "adding $f"
		git add -v $f
		git commit -am "add $f"
		git push --all
	fi
done
