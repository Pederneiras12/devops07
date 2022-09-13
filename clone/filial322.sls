filial: 322
dhcpd:
  subnets:
    172.17.222.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.222.1
      broadcast_address: 172.17.222.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.222.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    P2K-PDV-0322-031:
      fixed_address: 172.17.222.131
      hardware: ethernet 94:C6:91:C3:B5:A6
      filename: /p2k/pxelinux.0
    P2K-PDV-0322-032:
      fixed_address: 172.17.222.132
      hardware: ethernet 00:00:00:00:00:22
      filename: /p2k/pxelinux.0
    telefonia:
      fixed_address: 172.17.222.200
      hardware: ethernet 00:00:00:00:00:04
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
    ESTAB 322
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
    ESTAB 322
    CAIXA 98
    RAMO  ?
    FISCAL
    PREVENDA YES
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO    

cdlspc: 322

nfs:
  nfs_server: 172.17.222.254
  
P2K-POS:
  ip: 172.17.222.131
  num_loja: 0322
  pdv: 032
  gateway: 172.17.222.1
  rede: 172.17.255.0
  cnpj: 96662168021139
  estado: RS
  ip_sp: 172.17.222.254
  
zabbix-proxy:
  psk: 0dae7eccd03e9f2010c31c090b38821687fd72cafcfa2f096e7b48ca1e12662f
