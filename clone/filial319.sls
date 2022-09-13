filial: 319
dhcpd:
  subnets:
    172.17.219.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.219.1
      broadcast_address: 172.17.219.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.219.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    P2K-PDV-0319-031:
      fixed_address: 172.17.219.131
      hardware: ethernet 00:00:00:00:00:31
      filename: /p2k/pxelinux.0
    P2K-PDV-0319-032:
      fixed_address: 172.17.219.132
      hardware: ethernet 00:00:00:00:00:32
      filename: /p2k/pxelinux.0
    pv011:
      fixed_address: 172.17.219.111
      hardware: ethernet 94:C6:91:C3:D5:23
      ltsp:
        UNIREDE_LP_MAT: ws001
    telefonia:
      fixed_address: 172.17.219.200
      hardware: ethernet 00:00:00:00:00:01
    NB-CALL-AUD-6:
      fixed_address: 172.17.219.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.219.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.219.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.219.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.219.229
      hardware: ethernet F4:30:B9:A8:B7:ED      
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
    ESTAB 319
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
    ESTAB 319
    CAIXA 98
    RAMO  ?
    FISCAL
    PREVENDA YES
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work11: |
    CLIEN B4
    ESTAB 319
    CAIXA 11
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 319

nfs:
  nfs_server: 172.17.219.254

P2K-POS:
  ip: 172.17.219.132
  num_loja: 0319
  pdv: 032
  gateway: 172.17.219.1
  rede: 172.17.219.0
  cnpj: 96662168021481
  estado: RS
  ip_sp: 172.17.219.254

zabbix-proxy:
  psk: 0dae7eccd03e9f2010c31c090b38821687fd72cafcfa2f096e7b48ca1e12662f