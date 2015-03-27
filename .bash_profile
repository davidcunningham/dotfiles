#.bash_profile configuration

alias ll='ls -al'
alias start_mongo='boxen --enable-service mongodb'
alias stop_mongo='boxen --disable-service mongodb'

M2_HOME=/Users/$USER/Development/tools/apache-maven-3.1.1

export M2=$M2_HOME/bin

export ANDROID_HOME=/usr/local/Cellar/android-sdk

export MAVEN_OPTS="-Djavax.net.ssl.trustStore=/Users/$USER/Development/tools/collab-nexus-truststore.jks -Djavax.net.ssl.trustStorePassword="

JAVA7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home

export JAVA_HOME=$JAVA7_HOME

GRAILS_HOME=/Users/$USER/Development/tools/grails-2.4.3

export GRAILS_HOME=$GRAILS_HOME

PATH=$M2:$ANDROID_HOME/bin:$JAVA_HOME/bin:$GRAILS_HOME/bin:$PATH

export PATH=/usr/local/bin:$PATH

source /opt/boxen/env.sh
