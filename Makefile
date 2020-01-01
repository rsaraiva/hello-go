build:
	@docker build -f docker/Dockerfile -t hello-go:0.0.1 ./

run:
	@docker run --rm -p 80:8000 hello-go:0.0.1
