FROM centos:latest
MAINTAINER tejukhade186@gmail.com
RUN /bin/sh -c yum install -y httpd \
    zip\
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/diffuso.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip diffuso.zip
RUN cp -rvf diffuso/* .
RUN rm -rf diffuso diffuso.zip
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
EXPOSE 80 22