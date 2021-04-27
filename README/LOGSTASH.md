# How it's work

	In this project logstash contain:
	- extended structure
	- one pipeline(for now)
	- share configuration 
	- install filebeat

# Usage
Logstash can deployed separately from elastick and kibana by execute cmd
```
ansible-playbook --tags logstash tasks/main.yml
```
For install only filebeat type:
```
ansible-palybook --tags filebeats main.yml
```

# Sequense

1. Logstash playbook(for debian based os) provides several steps:
 - Download and install the Public Signing Key, install apt-transport-https 
 - save repository definition
 - install logstash
 - install and config filebeat

 [[Install guide]](https://www.elastic.co/guide/en/logstash/current/installing-logstash.html)

2. Config logstash 
	- jvm.options [[logstash jvm guide]](https://www.elastic.co/guide/en/logstash/current/jvm-settings.html)
	- pipeline.yml [[logstashpipline.yml guide]](https://www.elastic.co/guide/en/logstash/current/multiple-pipelines.html)
	- copy plugins config by \*.conf [[logstash plugin config guide]](https://www.elastic.co/guide/en/logstash/current/configuration-file-structure.html) 

3. Filebeat
 - [[Installation guide]](https://www.elastic.co/guide/en/beats/filebeat/current/filebeat-installation-configuration.html)
 - [[Config guide]](https://www.elastic.co/guide/en/beats/filebeat/current/configuring-howto-filebeat.html)
