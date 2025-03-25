FROM almalinux:9

# Installe les dépendances de base
RUN dnf install -y --allowerasing bash curl wget nano ncurses openssh-clients

# Copie le script
COPY a9repos.sh /root/a9repos.sh
RUN chmod +x /root/a9repos.sh

# Exécute le script
CMD ["/bin/bash", "/root/a9repos.sh"]
