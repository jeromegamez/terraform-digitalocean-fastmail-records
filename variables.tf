variable "domain" {}

variable "mx_records" {
  type = "list"
  default = [
    "in1-smtp.messagingengine.com",
    "in2-smtp.messagingengine.com",
  ]
}

variable "disable_email_autodiscovery" {
  default = "0"
}

variable "disable_carddav_autodiscovery" {
  default = "0"
}

variable "disable_caldav_autodiscovery" {
  default = "0"
}
