filial: 317
dhcpd:
  subnets:
    172.17.217.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.217.1
      broadcast_address: 172.17.217.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.217.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    P2K-PDV-0317-031:
      fixed_address: 172.17.217.131
      hardware: ethernet 00:00:00:00:00:17
      filename: /p2k/pxelinux.0
    P2K-PDV-0317-032:
      fixed_address: 172.17.217.132
      hardware: ethernet 00:00:00:00:00:17
      filename: /p2k/pxelinux.0
    telefonia:
      fixed_address: 172.17.217.200
      hardware: ethernet E0:D5:5E:F5:85:0F
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
    ESTAB 317
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
    ESTAB 317
    CAIXA 98
    RAMO  ?
    FISCAL
    PREVENDA YES
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO    

cdlspc: 317 193 LEBES001 44640 00000 RS00100000193

nfs:
  nfs_server: 172.17.217.254
  
P2K-POS:
  ip: 172.17.217.132
  num_loja: 0317
  pdv: 032
  gateway: 172.17.217.1
  rede: 172.17.217.0
  cnpj: 96662168020400
  estado: RS
  ip_sp: 172.17.217.254
  
zabbix-proxy:
  psk: 0dae7eccd03e9f2010c31c090b38821687fd72cafcfa2f096e7b48ca1e12662f