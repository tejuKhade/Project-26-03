# FROM centos:latest
# MAINTAINER tejukhade186@gmail.com
# RUN /bin/sh -c yum install -y  httpd \
#     zip 
# RUN /bin/sh -c yum install -y unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/diffuso.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN /bin/sh -c unzip diffuso.zip
# RUN cp -rvf diffuso/* .
# RUN rm -rf diffuso diffuso.zip
# CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
# EXPOSE 80

FROM centos:latest
MAINTAINER tejukhade186@gmail.com

RUN yum install -y httpd zip
RUN yum install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/diffuso.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip diffuso.zip
RUN cp -rvf diffuso/* .
RUN rm -rf diffuso diffuso.zip
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
EXPOSE 80 22


