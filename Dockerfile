# Use openSUSE Leap 15.5 as the base image
FROM opensuse/leap:15.5

# Set the maintainer label
LABEL maintainer=tux

# Add configuration files into the container
# ADD /root/dockerfiles/etc/ /etc/zypp/

# Refresh the repositories and install Apache
RUN zypper refs && zypper refresh
RUN zypper --non-interactive in apache2

# Add a test HTML file
# RUN echo "The Web server is running" > /srv/www/htdocs/test.html

# Uncomment if there are data files to copy into /srv/www/htdocs
# COPY data/* /srv/www/htdocs/

# Expose port 80
# EXPOSE 80

# Set the default command to run Apache in the foreground
# ENTRYPOINT ["/usr/sbin/httpd"]
# CMD ["-D", "FOREGROUND"]
