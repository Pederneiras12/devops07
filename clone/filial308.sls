filial: 308
dhcpd:
  subnets:
    192.168.208.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 192.168.208.1
      broadcast_address: 192.168.208.255
      subnet-mask: 255.255.255.0
      next_server: 192.168.208.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    P2K-PDV-0308-031:
      fixed_address: 192.168.0.131
      hardware: ethernet F4:4D:30:83:F3:C0
      filename: /p2k/pxelinux.0

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    RECIBO-BARRAS YES
    NUMERACAOAUTOMATICA YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE YES
    LIBERALIMITETOKEN SIM
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 308
    CAIXA 99
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work98: |
    CLIEN B4
    ESTAB 308
    CAIXA 98
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM

cdlspc: 308 175 LEBES001 44640 00000 RS0011703700175

nfs:
  nfs_server: 192.168.208.254

P2K-POS:
  ip: 192.168.208.131
  num_loja: 308
  pdv: 032
  gateway: 192.168.208.1
  rede: 192.168.255.0
  cnpj: 12345698901234
  estado: RS
  ip_sp: 192.168.208.254
  
zabbix-proxy:
  psk: ca0ec1e9c9e31bd94fa4ac63f7ae16fe7a7f59da63849abd7eafc6b71d4e6b94  