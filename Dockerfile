FROM alpine:3.5

MAINTAINER t.ashula <t.ashula+github@gmail.com>

COPY package/bin/hadolint /usr/local/bin/
COPY package/lib/         /usr/local/lib/

RUN ldconfig /usr/local/lib

WORKDIR /mnt

CMD ["hadolint", "-"]
