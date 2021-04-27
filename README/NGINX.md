
# What it is?
1. Nginx - web server for whose purpose interface for processing requests and
their service or server.
	- [What is nginx?(1)](http://nginx.org/ru/)
	- [What is nginx?(2)](https://ru.wikipedia.org/wiki/Nginx)
2. For example, nginx could work like reverse proxy server wich mean
processing request to local services or servers in local network(oposite for a
regular proxy wich redirect to dedicate server).
	- [Understand reverse poroxy](https://ru.wikipedia.org/wiki/%D0%9E%D0%B1%D1%80%D0%B0%D1%82%D0%BD%D1%8B%D0%B9_%D0%BF%D1%80%D0%BE%D0%BA%D1%81%D0%B8)
3. ```bash nginx -t ```
or (if your file not in default nginx dir)
```
nginx -t -c [path-to-nginx.conf]
```
 - [Nginx man](https://linux.die.net/man/8/nginx)

4. ```nginx -s reload```
 - [Nginx man](https://linux.die.net/man/8/nginx)

5. Modsecuity - web application "firewall".

 - [Modsecurity. What it is](https://en.wikipedia.org/wiki/ModSecurity)
 - [Modsecurity and nginx together](https://itfb.com.ua/kak-ustanovit-i-nastroit-modsecurity-v-nginx/)

6. [Modsecurity set of rules](https://owasp.org/www-project-modsecurity-core-rule-set/)

7. 	Nginx assembly have several advantages:
		- all in nginx is under your controll
		- posibility for add modules in config stage(very comfortable for project customization flexibility)
		- we can use of any version that we need, and not be controlled only by the assembled version

# Usage
For execute script type:
```
ansible-playbook tasks/nginx.yml
```
# Structure

**ANSIBLE-NGINX**
	|<br>
	|--- <strong>tasks </strong>(execute order):<br>
	|	|       <br>
	|	|- <strong><strong>nginx.yml</strong></strong>									 
	|	|															 
	|	|										 
	|	|					 
	|	|				 
	| |- <strong>ansible-nginx-install-dep.yml</strong></strong>========> [dependencies and instalations](https://itsecforu.ru/2021/02/11/%F0%9F%8C%90-%D0%BA%D0%B0%D0%BA-%D1%81%D0%BE%D0%B1%D1%80%D0%B0%D1%82%D1%8C-nginx-%D1%81-modsecurity-%D0%BD%D0%B0-ubuntu-%D1%81%D0%B5%D1%80%D0%B2%D0%B5%D1%80%D0%B5/)<br>
	| |                  						         <br>
	| |           <br>
	|	|						<br>
	|	|		<br>
	|	|- <strong>ansible-modsecurity.yml</strong></strong>================> Download, install and config [modsecurity with OWASP rules](https://owasp.org/www-project-modsecurity-core-rule-set/)              
	|	 						                <br/>
	|	 					  <br>
|--- <strong>templates<br></strong>
|	|<br>
|	|- <strong>modsec_includes.conf</strong></strong> =================> path to modesecurity configs<br>
|	|<br>
|	|- <strong>modsecurity.conf</strong></strong> ===========> modsecurity config file<br>
|	|<br>
|	|- <strong>nginx.conf</strong></strong> =============> nginx configuration<br>
|	|<br>
|	|- <strong>unicode.mapping</strong> <br>
|<br>
|<br>
|--- <strong>vars (variables folder) - not in use for this playbook<br></strong>


# Steps to start nginx with modsecurity:
	- reading doc
	- nginx manual make(with modsecurity)
	- ansible nginx make(optionall)


# Issues:
	- SElinux
