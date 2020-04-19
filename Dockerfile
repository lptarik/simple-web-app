FROM nginx:alpine

COPY default.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/
EXPOSE 11130!!!

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
