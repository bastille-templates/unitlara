#configuration PHP
sed -i '' 's|;date.timezone =|date.timezone ="Asia/Jakarta"|' /usr/local/etc/php.ini

cd /root/project; chown -R www:www database; chown -R www:www storage
#cd /root/project; chmod 644 .env; chown www:www .env
#cd /root/project; php artisan migrate
#cd /root/; php artisan serve --host 0.0.0.0 --port=80
cd /root; curl -X PUT --data-binary @config.json --unix-socket \
    /var/run/unit/control.unit.sock http://localhost/config/

rm /root/bootstrap.sh
