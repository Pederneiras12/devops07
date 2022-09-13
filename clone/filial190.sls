filial: 190
dhcpd:
  subnets:
    10.4.0.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 10.4.0.1
      broadcast_address: 10.4.0.255
      subnet-mask: 255.255.255.0
      next_server: 10.4.0.37
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    p2K-pdv-0190-031:
      fixed_address: 10.4.0.240
      hardware: ethernet F4:4D:30:83:F3:C8
      filename: /p2k/pxelinux.0
    pv011:
      fixed_address: 10.4.0.243
      hardware: ethernet 50:B3:63:02:9F:AF
      ltsp:
        ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
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
    ESTAB 190
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
    ESTAB 190
    CAIXA 98
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO    
  work11: |
    CLIEN B4
    ESTAB 190
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
 
    
cdlspc: 190 182 LEBES001 44640 00000 RS0018846000182

nfs:
  nfs_server: 10.4.0.37

P2K-POS:
  ip: 10.4.0.240
  num_loja: 0190
  pdv: 031
  gateway: 10.4.0.1
  rede: 10.4.255.0
  cnpj: 96662168015830
  estado: RS
  ip_sp: 10.4.0.37
  
zabbix-proxy:
  psk: 0398f4b60932cd260d72bb53aaa8d8a48f2ccd0961aeee4facf6dd603dac1c62