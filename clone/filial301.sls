filial: 301
dhcpd:
  subnets:
    172.17.201.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.201.1
      broadcast_address: 172.17.201.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.201.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    p2k-pdv-301:
      fixed_address: 172.17.201.150
      hardware: ethernet 74:27:EA:7A:4F:64
    p2k-pdv-302:
      fixed_address: 172.17.201.151
      hardware: ethernet B8:AE:ED:81:C3:DE
    pv010:
      fixed_address: 172.17.201.110
      hardware: ethernet 20:25:64:37:44:B7
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
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
  work1: |
    CLIEN B4
    ESTAB 301
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
    ESTAB 301
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
    ESTAB 301
    CAIXA 98
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work10: |
    CLIEN B4
    ESTAB 301
    CAIXA 10
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work: |
    CLIEN B4
    ESTAB 301
    CAIXA 99
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    

    
cdlspc: 012 009 LEBES001 44640 00000 RS0017558700009

zabbix-proxy:
  psk: f95ec69096031c4ee3a1299d61e5318ba4734cf47ebe996fb45b2865cccef33f