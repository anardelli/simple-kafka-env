#!/bin/bash

# Add DM Jenkins RPM repo
cat <<EOF > /etc/yum.repos.d/dm-jenkins.repo
[dm-jenkins]
name=Data Management Jenkins
baseurl=https://jenkins.esss.dk/dm/job/repo-stable/lastSuccessfulBuild/artifact/repo
gpgcheck=0
EOF

yum install -y epel-release
yum install -y java dm-zookeeper dm-kafka dm-librdkafka-devel

yum install -y python-pip python-devel
pip install confluent-kafka
