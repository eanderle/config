alias dcub="docker compose up --build"
alias dcd="docker compose down"

function dbash() {
  docker container exec -it $(docker ps --filter name="$1" -q) /bin/bash
}

function dlogs() {
  docker service logs --filter name="$1"
}
