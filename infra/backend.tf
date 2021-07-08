terraform {
  backend "gcs" { 
    bucket  = "githubactions-terraform-artifact"
    
    credentials = "../serviceAccount.json"
  }
}