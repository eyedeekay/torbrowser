
files=$(git status -u)
DATE=$(date)
git commit -am "update $DATE"
for f in $files; do
	if [ -f "$f" ]; then
		echo "adding $f"
		git add -v $f
		git commit -am "add $f"
		git push --all
	fi
done
