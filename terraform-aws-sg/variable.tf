variable "vpc_id"{

}

variable "sg_name"{

}

variable "sg_description" {
 default={}
}


variable "ingress_rules" {
  default = []
}

variable "egress_rules" {
  default=[]

}

variable "project_name" {
  
}

variable "common_tags" {

  default = {}
}

variable "sg_tags" {
  default = {}
}

