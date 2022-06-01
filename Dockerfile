FROM registry.suse.com/suse/sle15 
LABEL maintainer=tux 
ADD /root/dockerfiles/etc/ /etc/zypp/ 
RUN zypper refs && zypper refresh 
RUN zypper --non-interactive in apache2 
RUN echo "The Web server is running" > /srv/www/htdocs/test.html 
# COPY data/* /srv/www/htdocs/ 
EXPOSE 80 
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
