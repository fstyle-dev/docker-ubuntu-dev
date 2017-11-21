FROM fstyle/ubuntu-opencv

RUN apt-get install -y \
        libxext-dev \
        libxrender-dev \
        libxtst-dev \
        libboost-dev \
        # install java
        openjdk-8-jdk \
        ant \
        ca-certificates-java && \
        update-ca-certificates -f    

# Setup JAVA_HOME, this is useful for docker commandline
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME

RUN wget http://mirror.math.princeton.edu/pub/eclipse//technology/epp/downloads/release/oxygen/1a/eclipse-cpp-oxygen-1a-linux-gtk-x86_64.tar.gz -O /tmp/eclipse.tar.gz -q && \
    echo 'Installing eclipse' && \
    tar -xf /tmp/eclipse.tar.gz -C /opt && \
    rm /tmp/eclipse.tar.gz

