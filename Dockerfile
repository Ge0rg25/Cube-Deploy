FROM certbot/certbot

# Эти директивы нужны для сохранения Let's Encrypt сертификатов и содержимого ваших сайтов
VOLUME /etc/letsencrypt
VOLUME /var/www/html

# Запустк Certbot с нужными параметрами
CMD ["certonly", "--webroot", "--webroot-path=/var/www/html", "--email", "Ge0rgiusGus@yandex.ru", "--agree-tos", "--no-eff-email", "-d", "cube-hackaton.ru", "-d", "backend.cube-hackaton.ru", "-d", "auth.cube-hackaton.ru"]
#RUN openssl pkcs12 -export -in /etc/letsencrypt/live/kind-beaver.ru/fullchain.pem -inkey /app/etc/letsencrypt/live/kind-beaver.ru/privkey.pem -out /app/etc/letsencrypt/live/kind-beaver.ru/pkcs.p12 -name SSL_STORE -passout pass:SSL_STORE_PASSWORD

