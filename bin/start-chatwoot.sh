#!/bin/bash
set -e

echo "Iniciando Chatwoot..."
mkdir -p tmp/pids

# inicia o Puma (modo single recommended)
bundle exec puma -t 5:5 -w 0 -b tcp://0.0.0.0:3000
