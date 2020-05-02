# How to enable docker on you project
 * add Dockerfile  on your project with all required commands to build docker image for your application 


# Check Docker version on system?
  * command $: docker --version
  * OUTPUT : Docker version 19.03.5, build 633a0ea

# Create docker image
 * command $: docker build -f Dockerfile -t spring-boot-kubernetes:v1 .

# check docker images on your system
 * docker images
 
# Run docker image and map port internal and external 
* command $: docker run  -p 8080:80  --name spring-boot-kubernetes spring-boot-kubernetes:v1
* docker is running on your system localhost:8080


#remove images
docker rmi -f IMAGE_ID

# checking docker containers
docker container ls

# kill container
docker container kill INSTANCE_ID

#Clean all docker unused 
docker system prune



