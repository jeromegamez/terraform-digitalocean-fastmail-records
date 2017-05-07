resource "digitalocean_record" "autodiscovery_smtp" {
  count = "${var.disable_email_autodiscovery ? 0 : 1}"
  domain = "${var.domain}"
  type = "SRV"
  name = "_submission._tcp"
  priority = "1" # If set to "0", terraform will omit the value
  weight = "1"
  port = "587"
  value = "smtp.fastmail.com."
}

# Terraform currently omits "0" values, which causes a DigitalOcean API error
# resource "digitalocean_record" "autodiscovery_imap" {
#   count = "${var.disable_email_autodiscovery ? 0 : 1}"
#   domain = "${var.domain}"
#   type = "SRV"
#   name = "_imap._tcp"
#   priority = "0"
#   weight = "1"
#   port = "0"
#   value = "."
# }

resource "digitalocean_record" "autodiscovery_imaps" {
  count = "${var.disable_email_autodiscovery ? 0 : 1}"
  domain = "${var.domain}"
  type = "SRV"
  name = "_imaps._tcp"
  # Terraform currently omits "0" values, which causes a DigitalOcean API error
  # priority = "0"
  priority = "1"
  weight = "1"
  port = "993"
  value = "imap.fastmail.com."
}

# Terraform currently omits "0" values, which causes a DigitalOcean API error
# resource "digitalocean_record" "autodiscovery_pop3" {
#   count = "${var.disable_email_autodiscovery ? 0 : 1}"
#   domain = "${var.domain}"
#   type = "SRV"
#   name = "_pop3._tcp"
#   priority = "0"
#   weight = "1"
#   port = "0"
#   value = "."
# }

resource "digitalocean_record" "autodiscovery_pop3s" {
  count = "${var.disable_email_autodiscovery ? 0 : 1}"
  domain = "${var.domain}"
  type = "SRV"
  name = "_pop3s._tcp"
  # Terraform currently omits "0" values, which causes a DigitalOcean API error
  # priority = "0"
  priority = "1"
  weight = "1"
  port = "995"
  value = "pop.fastmail.com."
}

# Terraform currently omits "0" values, which causes a DigitalOcean API error
# resource "digitalocean_record" "autodiscovery_carddav" {
#   count = "${var.disable_carddav_autodiscovery ? 0 : 1}"
#   domain = "${var.domain}"
#   type = "SRV"
#   name = "_carddav._tcp"
#   priority = "0"
#   weight = "0"
#   port = "0"
#   value = "."
# }

resource "digitalocean_record" "autodiscovery_carddavs" {
  count = "${var.disable_carddav_autodiscovery ? 0 : 1}"
  domain = "${var.domain}"
  type = "SRV"
  name = "_carddavs._tcp"
  # Terraform currently omits "0" values, which causes a DigitalOcean API error
  # priority = "0"
  priority = "1"
  weight = "1"
  port = "443"
  value = "carddav.fastmail.com."
}

# Terraform currently omits "0" values, which causes a DigitalOcean API error
# resource "digitalocean_record" "autodiscovery_caldav" {
#   count = "${var.disable_caldav_autodiscovery ? 0 : 1}"
#   domain = "${var.domain}"
#   type = "SRV"
#   name = "_caldav._tcp"
#   priority = "0"
#   weight = "0"
#   port = "0"
#   value = "."
# }

resource "digitalocean_record" "autodiscovery_caldavs" {
  count = "${var.disable_caldav_autodiscovery ? 0 : 1}"
  domain = "${var.domain}"
  type = "SRV"
  name = "_caldavs._tcp"
  # Terraform currently omits "0" values, which causes a DigitalOcean API error
  # priority = "0"
  priority = "1"
  weight = "1"
  port = "443"
  value = "caldav.fastmail.com."
}
