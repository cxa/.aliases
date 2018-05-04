if [ `uname` == "Darwin" ]; then
    I='-i ""'
else
    I='-i""'
fi

mad app $1
cd $1/apps
mv sample $1
cd $1/src
mv sample.app.src $1.app.src
mv sample.erl $1.erl
cd ../../..
cp ~/.aliases/rebar.config ./
find . -type f -exec sed $I "s/sample/$1/g" {} \;
echo ":name \"$1\"\n:node-sname \"$1\"\n:lib-dirs '(\"deps\")" > .edts
