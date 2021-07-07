terraform {
  backend "gcs" { 
    bucket  = "terraform-gcp-githubactions-tfstate"
    credentials = "../serviceAccount.json"
  }
}