FROM ubuntu

RUN apt-get -y  update && \
    apt-get -y install \
		nodejs  \
		npm \
		wget \
		git

RUN npm install -g n
RUN n 0.10

RUN git clone https://github.com/mapbox/tilestream.git && \
    cd tilestream && npm install

WORKDIR tilestream

COPY config.json tilestream/

EXPOSE 8888

CMD node index.js start --config config.json
