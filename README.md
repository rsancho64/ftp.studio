### proftpd en debian 

see [https://www.ionos.es/digitalguide/servidores/configuracion/servidor-ftp-en-debian/](https://www.ionos.es/digitalguide/servidores/configuracion/servidor-ftp-en-debian/)

### vsftpd en debian 

Very Secure FTP Daemon is a popular and secure FTP server used in Linux and Unix systems, including Debian. To install on Debian:

```bash
sudo apt update && sudo apt upgrade
sudo apt install vsftpd
# start vsftpd service
sudo systemctl start vsftpd
# To ensure autostart at boot time:
sudo systemctl enable vsftpd
```

Configure: `/etc/vsftpd.conf` file. Some key confs:
- enabling local users
- disabling anonymous users
- enabling write permissions:

```plaintext:
anonymous_enable=NO
local_enable=YES
write_enable=YES
```

++seq : enable SSL/TLS encryption for FTP connections.
This involves creating SSL certificates and configuring vsftpd to use them.
Detailed steps: refer to specific guides

To allow FTP traffic through the firewall must open ports:

```bash
sudo ufw allow 20/tcp
sudo ufw allow 21/tcp
sudo ufw allow 990/tcp
sudo ufw allow 40000:50000/tcp
```

These commands will open ports 20, 21, 990, and a range 40000..50000 for FTP traffic

For further configuration and security settings, you can refer to detailed guides on configuring vsftpd for Debian

## otros servidores

https://www.sysprovider.es/blog/mejores-servidores-ftp-gratis/

# etc

## pptx-to-beamer -dockerized-

see [https://github.com/tomaz-suller/pptx-to-beamer](https://github.com/tomaz-suller/pptx-to-beamer) 

## ufw

```bash
sudo apt install ufw -y
sudo apt install firewalld rsyslog -y
sudo ufw enable
```