filial: 396
dhcpd:
  subnets:
    172.20.111.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.20.111.1
      broadcast_address: 172.20.111.255
      subnet-mask: 255.255.255.0
      next_server: 172.20.111.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    P2K-PDV-0396-031:
      fixed_address: 172.20.111.131
      hardware: ethernet 00:00:00:00:00:31
      filename: /p2k/pxelinux.0
    P2K-PDV-0396-032:
      fixed_address: 172.20.111.132
      hardware: ethernet 00:00:00:00:00:32
      filename: /p2k/pxelinux.0
    pv020:
      fixed_address: 172.20.111.120
      hardware: ethernet 00:00:00:00:00:20
      ltsp:
        UNIREDE_LP_MAT: ws001
    LBHRCJLG2:
      fixed_address: 172.20.111.226
      hardware: ethernet F4:8E:38:E6:6D:00
    NB-CALL-TI-20:
      fixed_address: 172.20.111.227
      hardware: ethernet 4C:DF:8F:FC:D7:B7
    NB-CALL-TI-BKP3:
      fixed_address: 172.20.111.228
      hardware: ethernet F4:8E:38:E6:23:40
    LBSB92:
      fixed_address: 172.20.111.229
      hardware: ethernet 74:E6:E2:D3:11:F2
    LBJDQ2:
      fixed_address: 172.20.111.230
      hardware: ethernet 54:BF:64:F4:47:88
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
    ESTAB 396
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
    ESTAB 396
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
    ESTAB 396
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 396

nfs:
    nfs_server: 172.20.111.254

P2K-POS:
    ip: 172.20.111.131
    num_loja: 0396
    pdv: 031
    gateway: 172.20.111.1
    rede: 172.20.111.0
    cnpj: 96662168039186
    estado: RS
    ip_sp: 172.20.111.254

zabbix-proxy:
    psk: 0dae7eccd03e9f2010c31c090b38821687fd72cafcfa2f096e7b48ca1e12662f
