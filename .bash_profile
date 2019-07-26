#.bash_profile configuration

alias ll='ls -al'

M2_HOME=/Users/$USER/Development/tools/apache-maven-3.1.1

MONGODB_HOME=/usr/local/Cellar/mongodb/3.2.5

export MONGODB_HOME=$MONGODB_HOME

MONGODB_DATA=/Users/davidcunningham/data/mongodb

export M2=$M2_HOME/bin

export ANDROID_HOME=/usr/local/Cellar/android-sdk

export MAVEN_OPTS="-Djavax.net.ssl.trustStore=/Users/$USER/Development/tools/collab-nexus-truststore.jks -Djavax.net.ssl.trustStorePassword="

JAVA7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home

JAVA8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_74.jdk/Contents/Home

export JAVA_HOME=$JAVA8_HOME

GRAILS_HOME=/Users/$USER/Development/tools/grails-2.4.3

export GRAILS_HOME=$GRAILS_HOME

PATH=$M2:$ANDROID_HOME/bin:$JAVA_HOME/bin:$GRAILS_HOME/bin:$MONGODB_HOME/bin:$PATH

export PATH=/usr/local/bin:$PATH

alias start_mongo='mongod --dbpath $MONGODB_DATA'
alias stop_mongo='mongod --shutdown'

# export secret key environment variables
source .secrets

