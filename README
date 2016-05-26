# docker image for kannel 


# usage

bearerbox and smsbox need to be started separately.            
When starting smsbox, link in the bearerbox container.                 

in one terminal, run;            
`docker run -it --name=mybearerbox komuw/kannel_bearerbox:v1.0`             
and in another terminal run;           
`docker run -it --name=smsbox --link=mybearerbox:mybearerbox komuw/kannel_bearerbox:v1.0`                 

make sure that in your /etc/kannel.conf file, the bearerbox host is set to the linked container. eg            
$ cat /etc/kannel.conf          
`# SMSBOX SETUP`        
`group = smsbox`       
`bearerbox-host = mybearerbox` #the name of the linked container         
`sendsms-port = 13013`              
`log-file = "/var/log/kannel/smsbox.log"`                    
`log-level = 0`                