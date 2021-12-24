mvn clean verify
cp -f target/*.jar script_conf/jar
cp -f target/*.asc script_conf/jar
cp -f target/*.pom script_conf/jar