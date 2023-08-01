version?=v0.0.1
docker_image_repo=us-central1-docker.pkg.dev/ca-planton-gcp-sh-zg/afs-planton-oss-gcp-uc1-docker
docker_image_path=github.com/plantoncloud/docker-image-openjdk17-grpc-health-probe
docker_image_tag?=${version}
docker_image=${docker_image_repo}/${docker_image_path}:${docker_image_tag}

.PHONY: build
build:
	docker build --platform linux/amd64 -t ${docker_image} .

.PHONY: release
release: build
	docker push ${docker_image}
