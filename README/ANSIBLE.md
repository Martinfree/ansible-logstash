
# About project

this project is a demonstration of automatic database deployment using the example of using <strong>Ansible 2.9 version</strong> automation for internal configuration of servers. 

So far, there is a deployment using the siem server with <strong>ELK stack</strong>.
# How it works?
Project have <strong>3 Plays</strong>:

1. First, install all dependencies for ELK stack(install-dep.yml)<br>
[[Elastic guide]](https://www.elastic.co/guide/en/elasticsearch/reference/7.12/deb.html)<br>
[[apt_key]](https://docs.ansible.com/ansible/2.9/modules/apt_key_module.html)<br>
[[apt_module]](https://docs.ansible.com/ansible/2.9/modules/apt_key_module.html)<br>
[[service module]](https://docs.ansible.com/ansible/2.9/modules/apt_key_module.html)<br>
[[Install logstash]](https://docs.ansible.com/ansible/2.9/modules/apt_key_module.html)<br>
[[Install kibana]](https://www.elastic.co/guide/en/kibana/7.12/deb.html)<br>

2. Second, config and start elasticsearch, kibana, logstash<br>
[[Elasticsearch settings]](https://www.elastic.co/guide/en/elasticsearch/reference/current/settings.html)

3. Config firewall<br>
[[Firewalld doc]](https://docs.ansible.com/ansible/2.9/modules/firewalld_module.html)

# Usage
ansible-playbook task/main.yml
You can just config only firewall with ```--tags config-firewall```

# Structure
**ANSIBLE-ELASTIC**
	|<br>
	|--- <strong>tasks </strong>(execute order):<br>
	|	|       <br>
	|	|- <strong><strong>main.yml</strong></strong>									 
	|	|															 
	|	|										 
	|	|					 
	|	|				 
	| |- <strong>ansible-install-dep.yml</strong></strong>========> Install gnupg, add elastic GPG key, apt-transport-https, default-jre.<br>
	| |                  						         <br>
	| |           <br>
	|	|						<br>
	|	|		<br>
	|	|- <strong>ansible-elk.yml</strong></strong>================> Install elasticsearch, kibana, logstash.<br>
	|	| 				                 
	|	| 						                
	|	| 						                       
	|	|- <strong>ansible-elastic.yml</strong>============> (null)start and cfg elastic						                 
	|	|- <strong>ansible-kibana.yml</strong></strong>============> (null)start and cfg kibana						                 
	|	|- <strong>ansible-logstash.yml</strong></strong>============> (null)start anf cfg logstash					                 
	|	 						                <br>
	|	 					  <br>
|--- <strong>templates<br></strong>
|	|<br>
|	|- <strong>jvm.options.j2</strong></strong> =================> javamachine options<br>
|	|<br>
|	|- <strong>elasticsearch.yml.j2</strong></strong> ===========> elasticsearch options<br>
|	|<br>
|	|- <strong>elasticsearch.repo</strong></strong> =============> (null)<br>
|	|<br>
|	|- <strong>kibana.yml.j2</strong> =============> kibana options<br>
|	|<br>
|	|<br>
|	|- <strong>logstash-conf</strong></strong> =================> logstash plugin files<br>
|	| |<br>
|	| |- <strong>10-input.conf</strong></strong> =================> input config<br>
|	| |<br>
|	| |- <strong>20-filter.conf</strong></strong> =================> filter config<br>
|	| |<br>
|	| |- <strong>30-output.conf</strong></strong> =================> output config<br>
|	| |<br>
|	|<br>
|	|- <strong>beats-conf</strong></strong> =================> all beats config<br>
|	| |<br>
|	| |- <strong>filebeat.yml.j2</strong></strong> =================> filebeat config<br>
|	| |<br>
|	|- <strong>logst-jvm.options.yml.j2</strong></strong> =================> logstash javamachine options<br>
|	|<br>
|	|- <strong>logstash-pipelines.yml.j2</strong></strong> =================> logstash pipelines config<br>
|	|<br>
|<br>
|<br>
|--- <strong>vars (variables folder)<br></strong>
| |<br>
| |- <strong>elastic-cfg.yml</strong> ========> Contains main elastic configs<br>
| |<br>
| |- <strong>kibana-cfg.yml</strong>========> Contains main kibana configs<br>
| |<br>
| |- <strong>logstash-cfg.yml </strong>========> Contains main kibana configs<br>
| |<br>
| |- <strong>filebeat-cfg.yml</strong> ========> Contains filebeat config<br>
| |<br>
| |- <strong>install-variables.yml </strong>==> Contains variables only for installing proc<br>
