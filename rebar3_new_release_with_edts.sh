rebar3 new release $1
cd $1
echo ":name \"$1\"\n:node-sname \"$1\"\n:lib-dirs '(\"_build/default/lib\")" > .edts
