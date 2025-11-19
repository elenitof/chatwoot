FROM chatwoot/chatwoot:latest

# mantém seu ajuste
RUN mkdir -p tmp/pids tmp/cache tmp/sockets && \
    chmod -R 777 tmp

# restaura o ENTRYPOINT padrão do Chatwoot
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
