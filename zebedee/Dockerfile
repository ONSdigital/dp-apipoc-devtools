FROM onsdigital/java-component

# Add the repo source
WORKDIR /usr/src
COPY ./target/dependency /usr/src/target/dependency
COPY ./target/classes /usr/src/target/classes
COPY ./data /opt/zebedee

ENV zebedee_root=/opt
ENV PORT="8082"

EXPOSE 8082

# Update the entry point script
ENTRYPOINT java -Xmx2048m \
          -Drestolino.classes=target/classes \
          -Drestolino.packageprefix=com.github.onsdigital.zebedee.reader.api \
          -cp "target/dependency/*:target/classes/" \
          com.github.davidcarboni.restolino.Main
