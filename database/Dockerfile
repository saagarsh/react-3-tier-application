FROM mysql:latest

WORKDIR /var/lib/mysql
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=school
RUN chown -R mysql:mysql /var/lib/mysql

USER mysql

EXPOSE 3306

VOLUME /var/lib/mysql

CMD ["mysqld"]
