#! /bin/bash

for user in unix01 unix02 unix03 unix04 unix05
do
  useradd -m -s /bin/bash $user
  echo -e "$user\n$user" | passwd $user
done

mkdir /var/www/webdav
cd /var/www/webdav
git clone https://gitlab.com/edtasixm06/m06-aso.git
cd /opt/docker

a2enmod dav_fs
a2enmod auth_digest
#htdigest -c /etc/apache2/webdav.passwd webdav <nomusuari>

cp apache2-webdav.conf /etc/apache2/conf-enabled
#service apache2 restart
apachectl -DFOREGROUND -k start

