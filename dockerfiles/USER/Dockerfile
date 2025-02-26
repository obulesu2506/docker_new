FROM almalinux:9
#if we create any user, by default, it will have root access
RUN useradd expense
# to avoid from root to normal, we should use this command
USER expense
CMD ["sleep", "100"]

