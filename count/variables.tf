variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
}

variable "zone_id" {
    default = "Z0725803UOT1RH72OH21"
}

variable "domain_name" {
    default = "daws86s.co.in"
}