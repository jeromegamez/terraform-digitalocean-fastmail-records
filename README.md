# terraform + DigitalOcean + Fastmail

A terraform module to provision DigitalOcean with
DNS records for FastMail.

https://www.fastmail.com/help/receive/domains-advanced.html

## Requirements

- terraform >=0.9.3
- A [FastMail](https://www.fastmail.com/?STKI=11902097)* account with
  a configured domain
- A [DigitalOcean](https://m.do.co/c/63b17903e50d)* account and
  [API token](https://cloud.digitalocean.com/settings/api/tokens)

_*Referral Link_

## Module input variables

- `domain` The domain to configure
- `disable_email_autodiscovery` (Default: _false_)
   Omit creation of DNS entries for client email auto-discovery
- `disable_carddav_autodiscovery` (Default: _false_)
   Omit creation of DNS entries for client CardDAV auto-discovery
- `disable_caldav_autodiscovery` (Default: _false_)
   Omit creation of DNS entries for client CalDAV auto-discovery

## Example

```tf
module "fastmail-records" {
  source = "jeromegamez/fastmail-records/digitalocean"

  domain = "example.com"
}
```

## License

MIT licensed. See LICENSE for full details.
