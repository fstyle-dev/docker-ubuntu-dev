FROM fstyle/ubuntu-opencv

RUN apt-get install -y \
        libxext-dev \
        libxrender-dev \
        libxtst-dev \
        libboost-dev \
        software-properties-common && \
    add-apt-repository "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" && \
    apt-get update && \
    apt-get install -y \
        oracle-java8-installer \
        ant \
        ca-certificates-java && \
    update-ca-certificates -f    

RUN wget http://mirror.math.princeton.edu/pub/eclipse//technology/epp/downloads/release/oxygen/1a/eclipse-cpp-oxygen-1a-linux-gtk-x86_64.tar.gz -O /tmp/eclipse.tar.gz -q && \
    echo 'Installing eclipse' && \
    tar -xf /tmp/eclipse.tar.gz -C /opt && \
    rm /tmp/eclipse.tar.gz

