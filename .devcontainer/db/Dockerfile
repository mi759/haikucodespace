FROM postgres:17

RUN localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8
RUN mkdir /tmp/definition/
COPY ./db/definition/* /tmp/definition/
COPY ./db/init/* /docker-entrypoint-initdb.d/
