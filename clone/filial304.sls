filial: 304
dhcpd:
  subnets:
    192.168.204.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 192.168.204.1
      broadcast_address: 192.168.204.255
      subnet-mask: 255.255.255.0
      next_server: 192.168.204.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    P2K-PDV-0304-031:
      fixed_address: 192.168.204.131
      hardware: ethernet 10:88:0F:00:87:3F
    #P2K-PDV-0304-031:
    #  fixed_address: 192.168.204.140
    #  hardware: ethernet 00:00:00:00:00:01
    pv010:
      fixed_address: 192.168.204.210
      hardware: ethernet FC:AA:14:F6:73:9E
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    p2k-catag-0304-001:
      fixed_address: 192.168.204.223
      hardware: ethernet F4:8E:38:E6:94:FE
    p2K-videowall-0304-001:
      fixed_address: 192.168.204.224
      hardware: ethernet 00:00:00:00:00:00

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
  work1: |
    CLIEN B4
    ESTAB 304
    CAIXA 1
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p 
    MODELO-ECF BemaMFD
    NFE-VERSAO 310
  work99: |
    CLIEN B4
    ESTAB 304
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
    ESTAB 304
    CAIXA 98
    RAMO  ?
    FISCAL
    PREVENDA YES
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 304
    CAIXA 10
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work: |
    CLIEN B4
    ESTAB 304
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    

    
cdlspc: 304 161 LEBES001 44640 00000 RS0011544800161

zabbix-proxy:
  psk: a986aff90636658fa2e026f1b242783a53071bcd495239411ebfe00ba941c944