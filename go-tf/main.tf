terraform {
  required_providers {
    http = {
      source = "hashicorp/http"
      version = "3.0.1"
    }
  }
}

provider "http" {
  # Configuration options
}

# The following example shows how to issue an HTTP GET request supplying
# an optional request header.
data "http" "example" {
  url = "http://localhost:2224/spock"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}

# produces an output value named "spocks_wisdom"
output "spocks_wisdom" {
  description = "response from /spock api"
  value       = data.http.example.response_body
}

