#Use an existing image as a base image
FROM alpine
#download and install a dependancy
RUN apk add --update gcc
RUN apk add --update apache2
#Tell the image what to do when it starts as a container
#copy your files, if you want to copy all use COPY . .
WORKDIR /var/www/localhost/htdocs
COPY index.html index.html
#CMD service apache2 start
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

