ARG version
FROM almalinux:${version:-9}
ENV course="Devops with AWS" \
    student="Kumar" \
    duration="120HRS"
#here USERNAME is key and other is default value
ARG USERNAME=Kumar
ENV USERNAME=$USERNAME
RUN echo "Hello User: ${USERNAME}, image version: ${version}" > /tmp/devops.txt
CMD ["sleep", "100"]
