FROM alpine:3.13 as openjdk
RUN apk --no-cache add openjdk11 curl
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk
ENV PATH="$JAVA_HOME/bin:${PATH}"

FROM openjdk as build
COPY ./src /project/src
COPY ./lib /project/lib
WORKDIR /project
RUN javac -cp ./lib/junit-4.12.jar:./lib/hamcrest-core-1.3.jar:. src/DevhausFizzBuzz.java

FROM openjdk as final
COPY --from=build /project/lib/ /project/lib/
COPY --from=build /project/src/DevhausFizzBuzz.class /project/
COPY ./executeInContainer.sh /project/
WORKDIR /project

ENTRYPOINT ["sh", "./executeInContainer.sh"]

HEALTHCHECK CMD curl --fail http://127.0.0.1:54321/fizzbuzz || exit 1