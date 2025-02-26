FROM almalinux:9
RUN mkdir /tmp/work-dir-demo
WORKDIR /tmp/work-dir-demo
RUN pwd
RUN echo "Hello this is fro mWORK DIR" > hello.txt
#below CMD given for testing/validating i.e., will get chance to log into container and test the path, otherwise container will get exit
CMD ["sleep", "100"]