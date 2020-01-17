FROM tomcat:alpine
ADD webapps/* /opt/local/tomcat/webapps/
WORKDIR /opt/local/tomcat/
EXPOSE 8080
CMD [ "catalina.sh" , "run" ]
