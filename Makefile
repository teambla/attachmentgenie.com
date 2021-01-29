build:
	docker build --target run .

tag:
	git tag -f $(VERSION)
	docker build --target run -t 623762986836.dkr.ecr.us-east-1.amazonaws.com/blog:$(VERSION) .

push:
	git push --tags
	docker push 623762986836.dkr.ecr.us-east-1.amazonaws.com/blog:$(VERSION)

update-theme:
	git submodule update --remote --rebase