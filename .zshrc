autoload -Uz compinit
compinit

alias ll='ls -al'

export PATH=$HOME/.gem/ruby/2.3.0/bin:$PATH:$HOME/Library/Python/2.7/bin

# SET JAVA HOME AND UPDATE PATH
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH=$JAVA_HOME/bin:$PATH

export LINKERD_HOME=$HOME/.linkerd2/bin
export PATH=$LINKERD_HOME:$PATH

export SPARK_HOME=$HOME/bin/spark/latest
export PATH=$PATH:$SPARK_HOME/bin
export HADOOP_HOME=$HOME/bin/hadoop/latest
export PATH=$PATH:$HADOOP_HOME/bin
export LD_LIBRARY_PATH=$HADOOP_HOME/lib/native
export SPARK_DIST_CLASSPATH=$(hadoop classpath)

export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS='notebook'

export ISTIO_HOME=$HOME/bin/istio/latest
export PATH=$PATH:$ISTIO_HOME/bin

export MAVEN_HOME=$HOME/bin/maven/latest
export PATH=$PATH:$MAVEN_HOME/bin

export OPENSHIFTCLIENT_HOME=$HOME/bin/openshift/client/latest
export PATH=$PATH:$OPENSHIFTCLIENT_HOME

export OPENSHIFTINSTALL_HOME=$HOME/bin/openshift/install/latest
export PATH=$PATH:$OPENSHIFTINSTALL_HOME

export PRESTO=$HOME/bin/presto
export SWAG=$HOME/bin/swag
export SKAFFOLD=$HOME/bin/skaffold
export KUBEFWD=$HOME/bin/kubefwd
export HELM=$HOME/bin/helm
export TERRAFORM=$HOME/bin/terraform
export TERRAGRUNT=$HOME/bin/terragrunt
export K9S=$HOME/bin/k9s
export KUBECTX=$HOME/bin/kubectx
export KUBENS=$HOME/bin/kubens
export VALERO=$HOME/bin/valero

#EKSCTL setup
export EKSCTL=$HOME/bin/eksctl
fpath=($fpath ~/.zsh/completion)

export PATH=$PATH:$SWAG:$SKAFFOLD:$PRESTO:$KUBEFWD:$HELM:$EKSCTL:$TERRAFORM:$TERRAGRUNT:$K9S:$KUBECTX:$KUBENS:$VALERO

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /Users/dcunningham/bin/terraform/terraform terraform

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/:\1/'
}

#kube-ps1 setup
export KUBE_PS1_SYMBOL_ENABLE=false
export KUBE_PS1_PREFIX=[
export KUBE_PS1_SUFFIX=
source $HOME/bin/kube-ps1/kube-ps1.sh
PROMPT='$(kube_ps1)$(parse_git_branch)] '$PROMPT

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dcunningham/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dcunningham/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dcunningham/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dcunningham/bin/google-cloud-sdk/completion.zsh.inc'; fi
