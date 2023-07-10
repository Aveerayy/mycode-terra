terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

provider "docker" {}


resource "docker_image" "simplegoservice" {
  name = "registry.gitlab.com/alta3/simplegoservice"
}

resource "docker_container" "simplegoservice" {
  image = docker_image.simplegoservice.image_id
  name  = var.container_name
  ports {
    internal = var.internal_port
    external = var.external_port
  }

}


