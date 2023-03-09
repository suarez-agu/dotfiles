alias doc='docker'
alias docc='docker compose'

docker_prune() {
	docker system prune --volumes -fa
}
