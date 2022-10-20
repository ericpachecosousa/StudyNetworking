variable "region" {
  type = map(string)
  default = {
    "" = "",
    "" = ""
  }
}
variable "internet_traffic_range" {
  type        = string
  description = "(optional) describe your variable"
  default     = ""
}

variable "vpc_kuber_cidr" {
  type        = string
  description = "(optional) describe your variable"
  default     = ""
}

variable "vpc_name" {
  type        = string
  description = "(optional) describe your variable"
  default     = ""
}

variable "tgwt_id" {
  type        = string
  description = "(optional) describe your variable"
  default     = ""
}

variable "vpc_id" {
  type        = string
  description = "(optional) describe your variable"
  default     = ""
}

variable "kuber_vpc_subnet_1" {
  type        = map(any)
  description = "(optional) describe your variable"
  default = {
    az    = ""
    range = ""
    name  = ""
  }
}
variable "kuber_vpc_subnet_1_id" {
  type        = string
  description = "(optional) describe your variable"
  default     = ""
}


variable "kuber_vpc_subnet_2" {
  type        = map(any)
  description = "(optional) describe your variable"
  default = {
    az    = ""
    range = ""
    name  = ""
  }
}
variable "kuber_vpc_subnet_2_id" {
  type        = string
  description = "(optional) describe your variable"
  default     = ""
}
variable "kuber_vpc_subnet_3" {
  type        = map(any)
  description = "(optional) describe your variable"
  default = {
    az    = ""
    range = ""
    name  = ""
  }
}
variable "kuber_vpc_subnet_3_id" {
  type        = string
  description = "(optional) describe your variable"
  default     = ""
}
variable "kuber_vpc_subnet_4" {
  type        = map(any)
  description = "(optional) describe your variable"
  default = {
    az    = ""
    range = ""
    name  = ""
  }
}
variable "kuber_vpc_subnet_5" {
  type        = map(any)
  description = "(optional) describe your variable"
  default = {
    az    = ""
    range = ""
    name  = ""
  }
}
variable "kuber_vpc_subnet_6" {
  type        = map(any)
  description = "(optional) describe your variable"
  default = {
    az    = ""
    range = ""
    name  = ""
  }
}

variable "kuber_vpc_tgw_subnet_1" {
  type        = map(any)
  description = "(optional) describe your variable"
  default = {
    az    = ""
    range = ""
    name  = ""
  }
}
variable "kuber_vpc_tgw_subnet_2" {
  type        = map(any)
  description = "(optional) describe your variable"
  default = {
    az    = ""
    range = ""
    name  = ""
  }
}
variable "kuber_vpc_tgw_subnet_3" {
  type        = map(any)
  description = "(optional) describe your variable"
  default = {
    az    = ""
    range = ""
    name  = ""
  }
}

