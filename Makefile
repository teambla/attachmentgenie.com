build:
	docker build --target run .

tag:
	docker build --target run -t 623762986836.dkr.ecr.us-east-1.amazonaws.com/blog:$(VERSION) .

push:
	docker push 623762986836.dkr.ecr.us-east-1.amazonaws.com/blog:$(VERSION)

