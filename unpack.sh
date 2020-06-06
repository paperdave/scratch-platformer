rm -rf src
mkdir src
cd src
unzip ../project.sb3
cat project.json | python -m json.tool > project.json.pretty
mv project.json.pretty project.json
echo Unpacked to src
