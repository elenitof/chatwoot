#!/bin/bash
set -e

# garante a pasta de pids (não estraga nada)
mkdir -p tmp/pids

# inicia o Sidekiq
bundle exec sidekiq
