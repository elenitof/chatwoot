FROM chatwoot/chatwoot:latest

# Environment
ENV RAILS_ENV=production

# Precompile frontend assets
RUN bundle exec rails assets:precompile
