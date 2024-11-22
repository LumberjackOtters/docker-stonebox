FROM debian:latest

RUN groupadd lumberjackotter && \
    useradd --create-home -g lumberjackotter lumberjackotter && \
    apt update && apt install -y \
    #  Network
    iputils-ping \
    net-tools \
    traceroute \
    dnsutils \
    whois \
    tcpdump \
    telnet \
    #  General
    nano \
    curl \
    wget \
    openssh-client \
    locate \
    git \
    tree \
    zip \
    jq \
    daemon \
    # BDD
    default-mysql-client \
    postgresql-client \
    redis-tools \
    #  SMTP
    swaks \
    && rm -rf /var/lib/apt/lists/*

USER lumberjackotter

WORKDIR /home/lumberjackotter

CMD ["tail", "-f", "/dev/null"]