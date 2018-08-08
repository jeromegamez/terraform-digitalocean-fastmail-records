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
- `enable_email_autodiscovery` (Default: _false_)
   Create DNS entries for client email auto-discovery
- `enable_carddav_autodiscovery` (Default: _false_)
   Create DNS entries for client CardDAV auto-discovery
- `enable_caldav_autodiscovery` (Default: _false_)
   Create DNS entries for client CalDAV auto-discovery

## Example

```tf
module "fastmail-records" {
  source = "jeromegamez/fastmail-records/digitalocean"

  domain = "example.com"
}
```

## Known issues

The Terraform DigitalOcean provider is currently not able to set `0` values for domain records.
This has been implemented in the underlying api client
(see [digitalocean/godo#164](https://github.com/digitalocean/godo/pull/164)), but this has not
been released yet.

## License

MIT licensed. See LICENSE for full details.
