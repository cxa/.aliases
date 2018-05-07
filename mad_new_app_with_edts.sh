mad app $1
cd $1/apps
mv sample $1
cd $1/src
mv sample.app.src $1.app.src
mv sample.erl $1.erl
cd ../../..
cp ~/.aliases/rebar.config ./
find . -type f -exec sed -i.bak "s/sample/$1/g" {} \;
find . -name "*.bak" -type f -delete
echo ":name \"$1\"\n:node-sname \"$1\"\n:lib-dirs '(\"deps\")" > .edts
