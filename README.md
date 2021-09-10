# attachmentgenie.com 

this is the hugo repo for my attachmentgenie website

# build and deploy

	make build VERSION=$(git rev-list --count master)
	make tag VERSION=$(git rev-list --count master)
	make push VERSION=$(git rev-list --count master)

