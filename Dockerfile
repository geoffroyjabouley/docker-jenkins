FROM ubuntu:14.04
MAINTAINER Geoffroy Jabouley "geoffroy.jabouley@gmail.com"

RUN apt-get update && apt-get clean
RUN apt-get install -q -y openjdk-7-jre-headless && apt-get clean
ADD http://mirrors.jenkins-ci.org/war/latest/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war", "--httpPort=10000"]
EXPOSE 10000
CMD [""]
