variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type"{
    type = string
    default = "t3.micro"
}

variable "ec2_tags"{
    type = map
    default = {
        Name = "terraform-demo"
        Terraform = "true"
        Project = "joindevops"
        Environment = "dev"
    }
}

variable "sg_name" {
    type = string
    default = "allow-all"
    #optional to inform what is this variable
    description = "Security group namr to attach to EC2 instance"
    
}