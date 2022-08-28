FROM devopsedu/webapp 
RUN rm /var/www/html/index.html
WORKDIR /var/www/html/
COPY website/ .
CMD apachectl -D FOREGROUND
