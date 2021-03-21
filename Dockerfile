FROM alpine
RUN apk add git \
    && apk add npm i -g http-server \
	&& git clone https://github.com/JuBrandt/node3.git \
	
VOLUME /home/julia/dev/node2/
WORKDIR /home/julia/dev/node2/
COPY ./ /home/julia/dev/node2/
EXPOSE 3000
CMD http-server