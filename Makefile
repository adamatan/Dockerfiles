.PHONE: base images

base: Dockerfile.base
	docker build --tag adamatan-base -f $< .

images: Dockerfile.images_and_video
	docker build --tag adamatan-images_and_video -f $< .