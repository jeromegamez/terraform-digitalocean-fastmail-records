resource "digitalocean_record" "autodiscovery_smtp" {
  count    = "${var.enable_email_autodiscovery ? 1 : 0}"
  domain   = "${var.domain}"
  type     = "SRV"
  name     = "_submission._tcp"
  priority = "1"                                         # If set to "0", terraform will omit the value
  weight   = "1"
  port     = "587"
  value    = "smtp.fastmail.com."
}

resource "digitalocean_record" "autodiscovery_imaps" {
  count  = "${var.enable_email_autodiscovery ? 1 : 0}"
  domain = "${var.domain}"
  type   = "SRV"
  name   = "_imaps._tcp"

  # Terraform currently omits "0" values, which causes a DigitalOcean API error
  # priority = "0"
  priority = "1"

  weight = "1"
  port   = "993"
  value  = "imap.fastmail.com."
}

resource "digitalocean_record" "autodiscovery_pop3s" {
  count  = "${var.enable_email_autodiscovery ? 1 : 0}"
  domain = "${var.domain}"
  type   = "SRV"
  name   = "_pop3s._tcp"

  # Terraform currently omits "0" values, which causes a DigitalOcean API error
  # priority = "0"
  priority = "1"

  weight = "1"
  port   = "995"
  value  = "pop.fastmail.com."
}

resource "digitalocean_record" "autodiscovery_carddavs" {
  count  = "${var.enable_carddav_autodiscovery ? 1 : 0}"
  domain = "${var.domain}"
  type   = "SRV"
  name   = "_carddavs._tcp"

  # Terraform currently omits "0" values, which causes a DigitalOcean API error
  # priority = "0"
  priority = "1"

  weight = "1"
  port   = "443"
  value  = "carddav.fastmail.com."
}

resource "digitalocean_record" "autodiscovery_caldavs" {
  count  = "${var.enable_caldav_autodiscovery ? 1 : 0}"
  domain = "${var.domain}"
  type   = "SRV"
  name   = "_caldavs._tcp"

  # Terraform currently omits "0" values, which causes a DigitalOcean API error
  # priority = "0"
  priority = "1"

  weight = "1"
  port   = "443"
  value  = "caldav.fastmail.com."
}
