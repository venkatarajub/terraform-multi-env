variable "instances" {
    type = map
    
}

variable "ami_id" {
    default = "ami-09c813fb71547fc4f"

}

variable "zone_id" {
    default = "Z045465338QE67HP0ONIN"
}

variable "common_tags" {
    default = {
        project = "expence"
        terraform = true
    }
}

variable "tags" {
    type = map
}

variable "environment" {

}

variable "domain" {
    default = "vensa.online"
}