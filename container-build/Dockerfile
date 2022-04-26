# Use the httpd-parent image as base
FROM quay.io/redhattraining/httpd-parent

LABEL io.openshift.expose-services="8080:http" \
      io.openshift.tags="httpd, apache" \
      io.k8s.description="Apache Http Server" \
      io.k8s.display-name="Apache HTTP Server"
 
RUN sed -i "s/Listen 80/Listen 8080/g" /etc/httpd/conf/httpd.conf

EXPOSE 8080

RUN chgrp -R 0 /var/log/httpd /var/run/httpd && chmod -R g=u /var/log/httpd /var/run/httpd

USER 1001

