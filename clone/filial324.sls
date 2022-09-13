filial: 324
dhcpd:
  subnets:
    172.17.224.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.224.1
      broadcast_address: 172.17.224.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.224.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    P2K-PDV-0324-031:
      fixed_address: 172.17.224.131
      hardware: ethernet 94:C6:91:CE:6A:5C
      filename: /p2k/pxelinux.0
    P2K-PDV-0324-032:
      fixed_address: 172.17.224.132
      hardware: ethernet 00:00:00:00:00:32
      filename: /p2k/pxelinux.0
    pv020:
      fixed_address: 172.17.224.120
      hardware: ethernet 00:00:00:00:00:72
      ltsp:
        UNIREDE_LP_MAT: ws001
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
    ESTAB 324
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
    ESTAB 324
    CAIXA 98
    RAMO  ?
    FISCAL
    PREVENDA YES
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 324
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 324

nfs:
    nfs_server: 172.17.224.254

P2K-POS:
    ip: 172.17.224.131
    num_loja: 0324
    pdv: 031
    gateway: 172.17.224.1
    rede: 172.17.224.0
    cnpj: 96662168021805
    estado: RS
    ip_sp: 172.17.224.254

zabbix-proxy:
    psk: 0dae7eccd03e9f2010c31c090b38821687fd72cafcfa2f096e7b48ca1e12662f