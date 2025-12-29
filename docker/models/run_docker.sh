docker rm -f avsp-models-dev-$USER 2>/dev/null || true

docker run --rm -it \
  -p 8000:8000 \
  -v "$(pwd)/../..":/app \
  -v "vscode-server-$USER":/root/.vscode-server \
  --name avsp-models-dev-$USER \
  avsp-models
