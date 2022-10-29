project = "attachmentgenie.com"
variable "tag" {
  type = string
  description = "docker image tag"
}

app "blog" {
  build {
    use "docker" {
      target = "run"
    }
    // registry {
    //   use "aws-ecr" {
    //     region = "us-east-1"
    //     repository = "623762986836.dkr.ecr.us-east-1.amazonaws.com/blog"
    //     tag = var.tag
    //   }
    // }
  }
  deploy {
    use "nomad" {
      //The following field was skipped during file generation
      auth = ""
      //The following field was skipped during file generation
      consul_token = ""
      //The following field was skipped during file generation
      vault_token = ""
    }
  }
}
