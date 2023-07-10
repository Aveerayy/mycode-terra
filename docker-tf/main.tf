#Akshay notes 
#terraform block 
terraform {
  required_providers { #provider
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.22.0"
    }
  }
}
//Specify the provider block
provider "docker" {}

//Resource block - docker_image and name of the resource block  
resource "docker_image" "nginx" {
  name         = "nginx:1.19.6"
  keep_locally = true    // keep image after "destroy"
}

//resource block, name and build details 
resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "tutorial"
  ports {
    internal = 80
    external = 2224
  }
}

