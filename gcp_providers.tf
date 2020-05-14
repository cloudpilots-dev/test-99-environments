/**
 * Copyright 2020, CLOUDPILOTS Software & Consulting GmbH
 *
 */

# provider configuration
provider "google" {
  version = "~> 3.6.0"
  region  = "europe-west3"
  zone    = "europe-west3-b"
}

provider "google-beta" {
  version = "~> 3.6.0"
  region  = "europe-west3"
  zone    = "europe-west3-b"
}

provider "null" {
  version = "~> 2.1"
}

provider "random" {
  version = "~> 2.2"
}
