FROM tomcat:alpine
RUN rm -rf /usr/local/tomcat/webapps/*
ADD webapps/* /usr/local/tomcat/webapps/
WORKDIR /usr/local/tomcat/
EXPOSE 8080
CMD [ "catalina.sh" , "run" ]
