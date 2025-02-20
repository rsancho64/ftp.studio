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

```plaintext:q
anonymous_enable=NO
local_enable=YES
write_enable=YES
```

++seq : enable SSL/TLS encryption for FTP connections.
This involves creating SSL certificates and configuring vsftpd to use them.
Detailed steps: refer to specific guides

To allow FTP traffic through the firewall must open ports:

```bash
sudo apt install ufw -y
sudo apt install firewalld rsyslog -y

sudo ufw enable  # test
sudo ufw disable # test

sudo ufw allow 21/tcp   # en srv: ctl (cmd's)
sudo ufw allow 20/tcp   # en srv: data
# en cli son: ctl: aleatorio N (>1023), y 
#             data: N+1.

sudo ufw allow 990/tcp  #?
sudo ufw allow 40000:50000/tcp  #?
```

These commands will open ports 20, 21, 990, and a range 40000..50000 for FTP traffic

For further configuration and security settings, you can refer to detailed guides on configuring vsftpd for Debian

## otros servidores

https://www.sysprovider.es/blog/mejores-servidores-ftp-gratis/


# objetivos

## FTP: operacion y modos de funcionamiento?

- es orientado a conexion; la inicia cualquier lado (cli o srv)
  - modo activo: cli activa ("ataca")
  - modo pasivo: cli indica "disposición"

## administrar: usuarios, grupos y cuotas

- la notacion POSIX `rwxrwxrwx`
- [ ] ejercicio: de todas las numeraciones en el rango 777 a 000 ¿cuales tienen poco-nulo sentido?
- Usuario anonymous (nameless) Convenio: pass: email
- Cuotas... servidor con FS que de soporte a cuotas
  - @linux: `quota` y montar el FS activando el tema.

    `tune2fs` # adjust tunable file system parameters on ext2/ext3/ext4 file systems


- comandos esenciales?
- instalar/configurar un servidor (en Windows y en Linux)

- Compartir carpetas con NFS en Linux y habilitar el acceso a ellas en Windows con SFU
- Aprender a compartir carpetas por CIFS en Windows
- Saber instalar un servidor SAMBA en Linux e integrarlo en una red Windows
- Aprender a desplegar un servidor dedicado con S.O. específico para servir archivos

# etc

## pptx-to-beamer -dockerized-

see [https://github.com/tomaz-suller/pptx-to-beamer](https://github.com/tomaz-suller/pptx-to-beamer) 

## ufw

```bash
sudo ufw enable
```