FROM almalinux:9
RUN dnf install nginx -y
RUN rm -rf /usr/share/nginx/html/index.html
ADD https://raw.githubusercontent.com/obulesu2506/docker_new/refs/heads/main/dockerfiles/RUN/Dockerfile /usr/sharenginx/html/index.html
RUN chmod +r /usr/share/nginx/html/index.html
ADD sample-1.txr /tmp/
CMD ["nginx", "-g", "daemon off;"]
