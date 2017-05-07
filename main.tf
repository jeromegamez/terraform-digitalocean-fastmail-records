resource "digitalocean_record" "mx" {
    domain = "${var.domain}"
    count = "${length(var.mx_records)}"
    type = "MX"
    name = "@"
    value = "${element(var.mx_records, count.index)}."
    priority = "${(count.index + 1) * 10}"
}

resource "digitalocean_record" "spf" {
  domain = "${var.domain}"
  type = "TXT"
  name = "@"
  value = "v=spf1 include:spf.messagingengine.com ?all"
}

resource "digitalocean_record" "dkim" {
  count = 3
  domain = "${var.domain}"
  type = "CNAME"
  name = "fm${count.index + 1}._domainkey"
  value = "fm${count.index + 1}.${var.domain}.dkim.fmhosted.com."
}
