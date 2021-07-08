terraform {
  backend "gcs" { 
    bucket  = "n3rd-test-artifact"

    credentials = "../serviceAccount.json"
  }
}