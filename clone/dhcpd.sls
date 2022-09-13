dhcpd:
  lookup:
    service: ltsp-dhcpd
    config: /etc/ltsp/dhcpd.conf

  domain_name: lebes.com.br
  domain_name_servers:
    - 10.2.0.15
    - 10.2.0.14
  default_lease_time: 21600
  max_lease_time: 21600
  authoritative: True

  use-host-decl-names: True
  
  options:
    option-128:
      code: 128
      type: string
    option-129:
      code: 129
      type: string
