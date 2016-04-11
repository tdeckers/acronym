FROM java:openjdk-8-jdk

RUN apt-get update && apt-get install -y unzip

COPY ./target/universal/acronym*.zip /opt/acronym.zip
WORKDIR /opt
RUN unzip acronym.zip
RUN ln -s acronym-* acronym

CMD ["/opt/acronym/bin/acronym", "-Dplay.crypto.secret=dsfadsflkj"]



