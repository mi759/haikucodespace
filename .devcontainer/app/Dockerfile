FROM debian:bookworm

RUN apt-get update && apt-get install -y curl git

RUN curl -fsSL https://go.dev/dl/go1.24.2.linux-amd64.tar.gz -o go.tar.gz && \
    tar -C /usr/local -xzf go.tar.gz
ENV PATH=$PATH:/usr/local/go/bin

RUN curl -fsSL https://deb.nodesource.com/setup_23.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh
RUN apt-get update && apt-get install -y nodejs


WORKDIR /workspace

RUN git clone https://github.com/mi759/haikuapi.git

RUN git clone https://github.com/mi759/haikufrontend.git && \
    cd haikufrontend && \
    npm install