FROM nginx:stable

COPY ./app/ /var/www
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

CMD ["nginx"]