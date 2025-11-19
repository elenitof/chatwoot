FROM chatwoot/chatwoot:latest

# Corrige pasta tmp e permissões
RUN mkdir -p tmp/pids tmp/cache tmp/sockets && \
    chmod -R 777 tmp

# Garante que o entrypoint padrão seja usado
ENTRYPOINT ["/docker-entrypoint.sh"]

# Inicia o servidor web (puma)
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
