filial: 318
dhcpd:
  subnets:
    172.17.218.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.218.1
      broadcast_address: 172.17.218.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.218.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    P2K-PDV-0318-031:
      fixed_address: 172.17.218.131
      hardware: ethernet 00:00:00:00:00:18
      filename: /p2k/pxelinux.0
    P2K-PDV-0318-032:
      fixed_address: 172.17.218.132
      hardware: ethernet 00:00:00:00:00:18
      filename: /p2k/pxelinux.0
    telefonia:
      fixed_address: 172.17.218.200
      hardware: ethernet E0:D5:5E:F5:94:A0
    NB-CALL-AUD-6:
      fixed_address: 172.17.218.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.218.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.218.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.218.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.218.229
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
    ESTAB 318
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
    ESTAB 318
    CAIXA 98
    RAMO  ?
    FISCAL
    PREVENDA YES
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO    

cdlspc: 318 192 LEBES001 44640 00000 RS00100000192

nfs:
  nfs_server: 172.17.218.254
  
P2K-POS:
  ip: 172.17.218.132
  num_loja: 0318
  pdv: 032
  gateway: 172.17.218.1
  rede: 172.17.218.0
  cnpj: 96662168020400
  estado: RS
  ip_sp: 172.17.218.254
  
zabbix-proxy:
  psk: 0dae7eccd03e9f2010c31c090b38821687fd72cafcfa2f096e7b48ca1e12662f