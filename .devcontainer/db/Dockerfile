FROM postgres:17

RUN localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8
WORKDIR /tmp
RUN apt-get update && apt-get install -y curl git
RUN git clone https://github.com/mi759/haikudatabase.git
COPY ./db/init/* /docker-entrypoint-initdb.d/
