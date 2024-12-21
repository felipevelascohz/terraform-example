// Este archivo es un link simbolico del archivo generic-files/main.tf

provider "aws" {
  region = var.region
  //profile = var.profile
}

locals {
  tags_as_map = {
    Ambiente = var.ambiente
    Iniciativa = var.project_name
    Owner = var.owner
    OwnerEmail= var.ownerEmail
    FechaEjecucion = timestamp()
    RepositoryURL = var.repo_url
    RepositoryCommit= var.repo_commit
  }
}