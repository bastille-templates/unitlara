#configuration PHP
sed -i '' 's|;date.timezone =|date.timezone ="Asia/Jakarta"|' /usr/local/etc/php.ini

#cd /root/project: chmod -R 775 database; chmod -R 775 storage
#cd /root/project; chmod 644 .env; chown www:www .env
#cd /root/project; php artisan migrate
#cd /root/; php artisan serve --host 0.0.0.0 --port=80

rm /root/bootstrap.sh