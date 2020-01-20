FROM tomcat:alpine
COPY conf/server.xml  /usr/local/tomcat/conf/
COPY conf/tomcat-users.xml /usr/local/tomcat/conf/
ADD webapps/* /usr/local/tomcat/webapps/
WORKDIR /usr/local/tomcat/
EXPOSE 8080
CMD [ "catalina.sh" , "run" ]