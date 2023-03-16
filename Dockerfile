FROM ubuntu:latest
MAINTAINER tejaswinikhade1@gmail.com
RUN /bin/sh -c apt-get install -y unzip \
    zip\
    httpd
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/diffuso.zip /var/www/html/
WORKDIR /var/www/html/
RUN /bin/sh -c unzip diffuso.zip
RUN cp -rvf diffuso/* .
RUN rm -rf diffuso diffuso.zip
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
EXPOSE 80 22

# FROM  centos:latest
# MAINTAINER tejaswinikhade1@gmail.com
# RUN /bin/sh -c yum install -y unzip \
#     zip\
#     httpd
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/diffuso.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN /bin/sh -c unzip diffuso.zip
# RUN cp -rvf diffuso/* .
# RUN rm -rf diffuso diffuso.zip
# CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
# EXPOSE 80 22