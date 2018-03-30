# Dockerfile for build app container
#
# tech-stack: ubuntu / mariadb / Moodle
#
# @author demmonico
# @image ubuntu-mariadb-moodle
# @version v3.3


FROM demmonico/ubuntu-mariadb
MAINTAINER demmonico@gmail.com


# copy files to install container
COPY install "${DMC_INSTALL_DIR}/"

# config DB
RUN yes | cp -rf "${DMC_INSTALL_DIR}/mariadb.cnf" /etc/mysql/my.cnf \
    && chmod 600 /etc/mysql/my.cnf

# init run script
CMD ["/run.sh"]
