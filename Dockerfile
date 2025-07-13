# -------- BASE STAGE --------
FROM ubuntu:22.04 AS base

RUN apt-get update && \
    apt-get install -y iproute2 procps && \
    apt-get clean

# -------- TEST STAGE --------
FROM base AS tests

# Instaluj nástroje pro testování/debug
RUN apt-get update && \
    apt-get install -y curl net-tools bash && \
    apt-get clean

# -------- PRODUCTION STAGE --------
FROM base AS production

# Přidej skript
COPY linux_cli.sh /usr/local/bin/linux_cli.sh
RUN chmod +x /usr/local/bin/linux_cli.sh

ENTRYPOINT ["/usr/local/bin/linux_cli.sh"]
