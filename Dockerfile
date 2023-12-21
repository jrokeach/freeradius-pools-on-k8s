FROM freeradius/freeradius-server:3.2.3
RUN ln -s /etc/raddb/mods-available/sqlippool /etc/raddb/mods-enabled/sqlippool \
	&& ln -s /etc/raddb/mods-available/sql /etc/raddb/mods-enabled/sql
RUN apt-get update \
    && apt-get -y install \
    mysql-client \
    && rm -fr /var/lib/apt/lists/*
# USER freerad
# ENTRYPOINT ["sh","-c","while true; sleep 60; done"]
# ENTRYPOINT ["sh","-c","/docker-entrypoint.sh"]