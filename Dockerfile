FROM fstyle/ubuntu-opencv:3.3.1-contrib-qt5

RUN apt-get install -y \
        libxext-dev \
        libxrender-dev \
        libxtst-dev \
        git
