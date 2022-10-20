terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
      configuration_aliases = [aws.provider_2]
    
    }
  }
}
## Usa o Data para obter o ID do Gateway de Transito quando o mesmo estiver available.
data "aws_ec2_transit_gateway" "tgwt" {
  id = "${var.tgwt_id}" 
    # The AMI ID must refer to an existing AMI that has the tag "nomad-server".
    # The State must refer to available
    
}