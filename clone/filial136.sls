filial: 136
dhcpd:
  subnets:
    172.17.136.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.136.1
      broadcast_address: 172.17.136.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.136.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws002:
      fixed_address: 172.17.136.101
      hardware: ethernet 00:0F:EA:AA:2E:BE
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws007:
      fixed_address: 172.17.136.107
      hardware: ethernet 00:0F:EA:D1:E4:4B
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.136.120
      hardware: ethernet 00:27:0E:1C:86:49
      ltsp:
        UNIREDE_LP_MAT: ws002
    pv021:
      fixed_address: 172.17.136.121
      hardware: ethernet 74:27:EA:7A:4F:4A
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws002
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.136.122
      hardware: ethernet 00:0F:EA:AA:11:F4
      ltsp:
        UNIREDE_LP_MAT: ws002
    pv023:
      fixed_address: 172.17.136.123
      hardware: ethernet E0:69:95:56:B3:3F
      ltsp:
        UNIREDE_LP_MAT: ws002
    pv024:
      fixed_address: 172.17.136.124
      hardware: ethernet 00:1F:C6:FF:77:69
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws002
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.136.125
      hardware: ethernet 00:22:15:C1:24:1E
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws002
    pv026:
      fixed_address: 172.17.136.126
      hardware: ethernet EC:A8:6B:B6:0D:3E
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws002
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv027:
      fixed_address: 172.17.136.127
      hardware: ethernet 74:27:EA:72:C8:88
      ltsp:
        UNIREDE_LP_MAT: ws002
    P2K-PDV-0136-031:
      fixed_address: 172.17.136.131
      hardware: ethernet FC:AA:14:F6:8E:1D
    P2K-PDV-0136-032:
      fixed_address: 172.17.136.132
      hardware: ethernet 94:DE:80:F1:6B:99
    P2K-PDV-0136-033:
      fixed_address: 172.17.136.133
      hardware: ethernet FC:AA:14:F6:8E:1C
    P2K-PDV-0136-034:
      fixed_address: 172.17.136.134
      hardware: ethernet 94:DE:80:F1:6C:A4
    scanner-crediario:
      fixed_address: 172.17.136.240
      hardware: ethernet 30:05:5C:AC:59:37
      
admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    NFCE YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 136
    CAIXA 99
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work1: |
    CLIEN B4
    ESTAB 136
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    ABRE-GAVETA SIM
    VENDA NAO
  work6: |
    CLIEN B4
    ESTAB 136
    CAIXA 6
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    ABRE-GAVETA SIM
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 136
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work21: |
    CLIEN B4
    ESTAB 136
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work22: |
    CLIEN B4
    ESTAB 136
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work23: |
    CLIEN B4
    ESTAB 136
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work24: |
    CLIEN B4
    ESTAB 136
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work25: |
    CLIEN B4
    ESTAB 136
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work26: |
    CLIEN B4
    ESTAB 136
    CAIXA 26
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work27: |
    CLIEN B4
    ESTAB 136
    CAIXA 27
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work: |
    CLIEN B4
    ESTAB 136
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p

cdlspc: 136 155 LEBES001 44640 00000 RS0019410300155

zabbix-proxy:
  psk: 9ec2517c2921f9762d3cf3759c9ac6716c69bcb2c6420ed3a78de615ba3260cc