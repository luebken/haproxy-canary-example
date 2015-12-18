FROM haproxy:1.5
EXPOSE 80
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg