build:
	docker build --target run .

tag:
	git tag $(VERSION)
	docker build --target run -t 623762986836.dkr.ecr.us-east-1.amazonaws.com/dnsproblem:$(VERSION) .

push:
	docker push 623762986836.dkr.ecr.us-east-1.amazonaws.com/dnsproblem:$(VERSION)

