FROM registry.access.redhat.com/ubi8:8.0

RUN yum install -y --disableplugin=subscription-manager --nodocs nginx \
  && yum clean all

ADD index.html /usr/share/nginx/html
ADD download /usr/share/nginx/html/download

ADD nginx.conf /etc/nginx/nginx.conf

RUN touch /run/nginx.pid \
  && chgrp -R 0 /var/log/nginx /run/nginx.pid /usr/share/nginx \
  && chmod -R g+rwx /var/log/nginx /run/nginx.pid /usr/share/nginx
  
EXPOSE 8080
USER 1001

CMD nginx -g "daemon off;"

