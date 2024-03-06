terraform {
 cloud { 
   oraganization = "skills-hybird
   workspaces { 
      name = "Terraform"
   }
  }
}

provider "google" {
  credentials = file("/c/Users/MONIKA/credentials1/calm-rainfall-383721-077876316c5a.json")
  project     = "demo-prj-tf"
  region      = "us-central1"
}

