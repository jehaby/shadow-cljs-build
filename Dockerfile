FROM node:14.17

WORKDIR /tmp
ENV CLOJURE_VER=1.10.3.839

RUN apt-get update \
  && apt-get -q -y install openjdk-8-jdk \
  && curl -s https://download.clojure.org/install/linux-install-$CLOJURE_VER.sh | bash

CMD ["sh"]
