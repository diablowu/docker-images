FROM alpine:3.12

WORKDIR /app/src
RUN echo "https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.12/main" > /etc/apk/repositories \
	&& echo "https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.12/community" >> /etc/apk/repositories \
    && apk update && apk add git \
    && apk add build-base automake autoconf libxml2 fuse-dev curl-dev \
    && git clone https://github.com/s3fs-fuse/s3fs-fuse.git . \
    && ./autogen.sh && ./configure && make && make install