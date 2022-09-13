filial: 321
dhcpd:
  subnets:
    172.17.221.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.221.1
      broadcast_address: 172.17.221.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.221.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    P2K-PDV-0321-031:
      fixed_address: 172.17.221.131
      hardware: ethernet 94:C6:91:C3:B5:A3
      filename: /p2k/pxelinux.0
    P2K-PDV-0321-032:
      fixed_address: 172.17.221.132
      hardware: ethernet 94:C6:91:C3:B5:21
      filename: /p2k/pxelinux.0
    telefonia:
      fixed_address: 172.17.221.200
      hardware: ethernet 00:00:00:00:21:23
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
    ESTAB 321
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
    ESTAB 321
    CAIXA 98
    RAMO  ?
    FISCAL
    PREVENDA YES
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO    

dlspc: 321 197 LEBES001 44640 00000 RS00100000197


nfs:
  nfs_server: 172.17.221.254

P2K-POS:
  ip: 172.17.221.131
  num_loja: 0321
  pdv: 031
  gateway: 172.17.221.1
  rede: 172.17.255.0
  cnpj: 96662168021309
  estado: RS
  ip_sp: 172.17.221.254
  
zabbix-proxy:
  psk: 0398f4b60932cd260d72bb53aaa8d8a48f2ccd0961aeee4facf6dd603dac1c62
