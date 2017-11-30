# Dockerfile for build app container
#
# tech-stack: ubuntu / mariadb / Moodle
#
# @author demmonico
# @image ubuntu-mariadb-moodle
# @version v1.0


FROM demmonico/ubuntu-mariadb
MAINTAINER demmonico@gmail.com


# optional copy files to install container
COPY install "${INSTALL_DIR}/"

# config DB
RUN yes | cp -rf "${INSTALL_DIR}/mariadb.cnf" /etc/mysql/my.cnf \
    && chmod 600 /etc/mysql/my.cnf

# init run script
CMD ["/run.sh"]
