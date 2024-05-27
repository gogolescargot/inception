FROM alpine:3.19

# NGINX
RUN apk update && apk add --no-cache nginx

# SSL
RUN mkdir -p /etc/nginx/ssl
COPY ./ssl/ggalon.42.fr.crt /etc/nginx/ssl/ggalon.42.fr.crt
COPY ./ssl/ggalon.42.fr.key /etc/nginx/ssl/ggalon.42.fr.key

# CONFIG
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./conf/fastcgi-php.conf /etc/nginx/snippets/fastcgi-php.conf

# PORT
EXPOSE 443

# EXEC
CMD ["nginx", "-g", "daemon off;"]