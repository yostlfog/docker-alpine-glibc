FROM arm64v8/alpine:3.13

ENV LANG=C.UTF-8

# Here we install GNU libc (aka glibc) and set C.UTF-8 locale as default.

/bin/sh -c apk add --no-cache  wget &&         wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub  &&         wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.31-r0/glibc-2.31-r0.apk  &&         apk add glibc-2.31-r0.apk  &&         rm -rf glibc-2.31-r0.apk  &&         rm -rf /var/cache/apk/*
