FROM nginx

COPY nginx.conf /etc/nginx/
COPY start.sh /
COPY server.c /

RUN apt-get update &&  \
    apt-get install -y gcc spawn-fcgi libfcgi-dev && \ 
    gcc server.c -o webserver -l fcgi && \
    chmod +x /start.sh

ENTRYPOINT ["./start.sh"]
