FROM alpine:3.5
# Maybe use abuild instead of building with make
RUN apk --update add git build-base openssl-dev linux-headers lua5.2 lua5.2-dev libfetch-dev gdb
COPY ./apk-tools /apk-tools
ENV CFLAGS="-g -O0"
ENV CC="gcc"
RUN cd apk-tools && make && make install
