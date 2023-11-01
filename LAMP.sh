apt update
apt install apache2 -y
mkdir -p /etc/ufw/applications.d
cd /etc/ufw/applications.d
echo -e "[Apache Full]\ntitle=Web Server (HTTP,HTTPS,SSH)\ndescription=Apache web server with HTTP, HTTPS and SSH ports open. \nports=80,443,22/tcp\n" > /etc/ufw/applications.d/apachefull.rules
ufw allow http
ufw allow https
ufw allow "Apache Full"
apt install -y php8.1-common php8.1-mysql php8.1-xml php8.1-xmlrpc php8.1-curl php8.1-imagick php8.1-cli php8.1-dev php8.1-imap php8.1-mbstring php8.1-opcache php8.1-soap php8.1-zip php8.1-intl libapache2-mod-php8.1 php-mysql php-xml php8.1-gd -y
apt install -y mysql-server
