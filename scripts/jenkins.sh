

for package commands:-

/opt/maven/bin/mvn clean package
cd target/

mv sparkjava-hello-world-1.0.war  sparkjava-hello-world-$BUILD_NUMBER.war

aws s3 cp sparkjava-hello-world-$BUILD_NUMBER.war s3://ekanadhareddy-bucket/

for deploy commands:-

aws s3 cp  s3://ekanadhareddy-bucket/sparkjava-hello-world-$CHOICE.war .
#ssh root@10.1.3.10
scp -r * sparkjava-hello-world-$CHOICE.war root@10.1.0.28:/opt/tomcat/webapps
