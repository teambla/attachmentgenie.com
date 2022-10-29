VERSION = $(shell git rev-list --count master)
GIT_TREE_STATE=$(shell (git status --porcelain | grep -q .) && echo -dev || echo "")

build:
	waypoint build -var="tag=$(VERSION)$(GIT_TREE_STATE)"

update-theme:
	git submodule update --remote --rebase