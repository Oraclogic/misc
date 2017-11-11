mysql strange installations problems (logger: command not found)

apt-get --reinstall install bsdutils

Commands used in video (SSL setup):

`apt-get install nginx`
`service nginx start`
apt-get install git
sudo git clone https://github.com/letsencrypt/letsencrypt .
sudo service nginx stop
./letsencrypt-auto certonly --standalone --register-unsafely-without-email
`
  server {

    listen 80;
    server_name www.SITE.ru SITE.ru;
    return 301 https://SITE.ru$request_uri;
}


1494341194 2017/5/9 下午10:46:37 1494341204000
server {

    listen 443 ssl;
    server_name SITE.com;

}


server {

    ssl_certificate         /etc/letsencrypt/live/SITE.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/SITE.com/privkey.pem;

    ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
    ssl_prefer_server_ciphers on;
    ssl_ciphers 'EECDH+AESGCM:EDH+AESGCM:AES256+EECDH:AES256+EDH';
}


sudo cp /opt/letsencrypt/examples/cli.ini /usr/local/etc/le-renew-webroot.ini

cd /opt/letsencrypt

./letsencrypt-auto certonly -a webroot --renew-by-default --config
 /usr/local/etc/le-renew-webroot.ini

 ###Tomcat SSL configuration

 ```
 keytool -genkey -alias tomcat -keyalg RSA -keystore tomcat.keystore
 ```

 #####Update tomcate server.xml

 ```
 keystoreFile="tomcat.keystore" keystorePass="Password1"
 ```
