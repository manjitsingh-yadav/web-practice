#!/bin/bash
sudo apt update
sudo apt install apache2 -y
echo "<html><body>
                <h1><p>Page being served from: HOSTNAME</p></h1>
</body></html>" > /var/www/html/index.html
sed -i "s/HOSTNAME/$(hostname)/g" /var/www/html/index.html
