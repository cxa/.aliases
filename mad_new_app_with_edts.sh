mad app $1
cd $1/apps
mv sample $1
cd $1/src
mv sample.app.src $1.app.src
mv sample.erl $1.erl
cd ../../..
wget https://raw.githubusercontent.com/synrc/n2o/master/samples/rebar.config -O rebar.config
sed -i '' '/n2o,/d' rebar.config
sed -i '' $'/deps,[ ]*\[/s/\[/\[\\\n\    {n2o, \"\.\*\", \{git, \"git\:\/\/github\.com\/cxa\/n2o\", \{tag, \"master\"\}\}\},\\\n/g' rebar.config
sed -i '' '/gproc,/s/tag,[ ]*\".*\"/tag, \"0.7.0"/g' rebar.config
sed -i '' '/jsone,/s/tag,[ ]*\".*\"/tag, \"1.4.5"/g' rebar.config
sed -i '' '/mad,/s/tag,[ ]*\".*\"/tag, \"3.9"/g' rebar.config
sed -i '' '/sh,/s/tag,[ ]*\".*\"/tag, \"1.9.1"/g' rebar.config
sed -i '' '/active,/s/tag,[ ]*\".*\"/tag, \"3.3"/g' rebar.config
sed -i '' '/fs,/s/tag,[ ]*\".*\"/tag, \"4.1"/g' rebar.config
find . -type f -exec sed -i '' "s/sample/$1/g" {} \;
echo ":name \"$1\"\n:node-sname \"$1\"\n:lib-dirs '(\"deps\")" > .edts
