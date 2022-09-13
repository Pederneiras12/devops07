filial: 116
dhcpd:
  subnets:
    172.17.116.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.116.1
      broadcast_address: 172.17.116.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.116.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws001:
      fixed_address: 172.17.116.101
      hardware: ethernet 20:CF:30:BD:0A:95
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    ws006:
      fixed_address: 172.17.116.106
      hardware: ethernet 74:27:EA:72:C9:0C
      ltsp:
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws005
        UNIREDE_LP_TER: ws005
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.116.120
      hardware: ethernet 00:0F:EA:D6:61:07
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.116.121
      hardware: ethernet 00:0F:EA:D6:8D:7F
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.116.122
      hardware: ethernet 00:0F:EA:D2:0F:E3
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv024:
      fixed_address: 172.17.116.124
      hardware: ethernet 00:1C:25:AD:0F:40
      ltsp:
        UNIREDE_LP_MAT: ws001
    scanner-crediario:
      fixed_address: 172.17.116.240
      hardware: ethernet 3C:2A:F4:21:C1:7C
    P2K-PDV-0116-031:
      fixed_address: 172.17.116.131
      hardware: ethernet 1C:6F:65:F3:F0:2C
    P2K-PDV-0116-032:
      fixed_address: 172.17.116.132
      hardware: ethernet 38:60:77:6A:0F:89

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA yes
    RECIBO-BARRAS yes
    ACAO-INDICA-AMIGOS no
    LIBERALIMITETOKEN SIM
    VENDE-SEGURO SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work1: |
    CLIEN B4
    ESTAB 116
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work6: |
    CLIEN B4
    ESTAB 116
    CAIXA 6
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 116
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 116
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 116
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 116
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 116 127 LEBES001 44640 00000 RS0018200800127

zabbix-proxy:
  psk: ef540f520c869ee8a2e5f022444aa1945c3d37028e9e6eeea4299f818318968f