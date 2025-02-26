FROM almalinux:9
RUN dnf install nginx -y
# there is no functionality for Expose and it is just for information
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
