filial: 140
dhcpd:
  subnets:
    10.12.0.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 10.12.0.1
      broadcast_address: 10.12.0.255
      subnet-mask: 255.255.255.0
      next_server: 10.12.0.140
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    p2K-pdv-140-001:
      fixed_address: 10.12.0.141
      hardware: ethernet FC:AA:14:F6:75:89
    pv015:
      fixed_address: 10.12.0.142
      hardware: ethernet 94:DE:80:F1:7D:57
      ltsp:
        SCREEN_04: ldm
        SCREEN_03: ssh-adm
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
    ESTAB 140
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
    ESTAB 140
    CAIXA 98
    RAMO  ?
    PREVENDA yes
    FISCAL 
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO    
  
cdlspc: 140 154 LEBES001 44640 00000 RS0018480700154

zabbix-proxy:
  psk: 94ec0ee5e1433899f350c16417a75a413d49568e97e7ec747094cb4c0218cbfd