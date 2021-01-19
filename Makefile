build:
	packer build -var version=$(git rev-list --count master) blog.json

update-theme:
	git submodule update --remote --rebase	
