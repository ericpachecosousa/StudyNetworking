terraform {
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = "~> 4.0"
      configuration_aliases = [aws.provider_1, aws.provider_2]

    }
  }
}

## Configuração do provider da AWS, autentica-se via access_key e secret_key

provider "aws" {
  alias               = "provider_1"
  region              = var.region["region_1"]
  shared_config_files = ["%USERPROFILE%\\.aws\\config"]
}
provider "aws" {
  alias               = "provider_2"
  region              = var.region["region_2"]
  shared_config_files = ["%USERPROFILE%\\.aws\\config"]
}