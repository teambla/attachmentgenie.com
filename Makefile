build:
	packer build -var version=$(git rev-list --count master) docker.json

update-theme:
	git submodule update --remote --rebase	
