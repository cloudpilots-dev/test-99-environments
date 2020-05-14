terraform {
  backend "gcs" {
    bucket = "cpl-tf-demo-state" # TODO Change to Veroo specific bucket
    prefix = "tf/domain"
  }
}
