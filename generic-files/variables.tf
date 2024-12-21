// Los valores de estas variables se encuentran en la ruta generic-variables/variables.tfvars
// Este archivo es un link simbolico del archivo generic-files/variables.tf
variable "region" {
    type = string
    description = "región en donde se ejecutarán los scripts tf"
}

variable "profile" {
    type = string
    description = "perfil de aws para indicar en que cuenta se trabajará, usado para ejecuciones locales"
}

variable "project_name" {
    type = string
    description = "nombre del proyecto"
}

variable "ambiente" {
    type = string
    description = "ambiente al cual corresponde la infraestructura"  
}

variable "owner" {
    type = string
    description = "mantenedor de los scripts"
}

variable "ownerEmail" {
    type = string
    description = "mail de contacto"
}

//Variables para el pipeline

variable "repo_url" {
    type = string
    description = "URL del repositorio en github"
}

variable "repo_commit" {
    type = string
    description = "commit ejecutado"
}