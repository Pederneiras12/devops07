filial: 104
dhcpd:
  subnets:
    172.17.104.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.104.1
      broadcast_address: 172.17.104.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.104.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth3')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws001:
      fixed_address: 172.17.104.101
      hardware: ethernet 90:E6:BA:39:D2:64
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    ws007:
      fixed_address: 172.17.104.107
      hardware: ethernet FC:AA:14:F6:79:F7
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.104.120
      hardware: ethernet 20:25:64:37:3F:B6
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.104.121
      hardware: ethernet F4:4D:30:8C:F9:A1
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.104.122
      hardware: ethernet 00:1F:C6:9D:AE:AD
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.104.123
      hardware: ethernet E0:69:95:3B:4D:03
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.104.124
      hardware: ethernet F4:4D:30:83:F3:A3
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.104.125
      hardware: ethernet 94:C6:91:4E:4E:43
      ltsp:
        SCREEN_04: ldm
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv026:
      fixed_address: 172.17.104.126
      hardware: ethernet 94:DE:80:F1:6C:EF
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0104-031:
      fixed_address: 172.17.104.131
      hardware: ethernet 74:27:EA:7A:4F:1B
    P2K-PDV-0104-032:
      fixed_address: 172.17.104.132
      hardware: ethernet 3C:2A:F4:04:08:95
    P2K-PDV-0104-033:
      fixed_address: 172.17.104.133
      hardware: ethernet 74:27:EA:72:CA:33
    P2K-PDV-0104-034:
      fixed_address: 172.17.104.134
      hardware: ethernet 20:25:64:37:3B:B4
    scanner-crediario:
      fixed_address: 172.17.104.240
      hardware: ethernet 3C:2A:F4:04:08:95
    relogio-ponto:
      fixed_address: 172.17.104.210
      hardware: ethernet FC:52:CE:80:8D:68

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    RECIBO-BARRAS YES
    NUMERACAOAUTOMATICA YES
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN SIM
    FEIRAO-NOME-LIMPO SIM
    NFCE SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work1: |
    CLIEN B4
    ESTAB 104
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work7: |
    CLIEN B4
    ESTAB 104
    CAIXA 7
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 104
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 104
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 104
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 104
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 104
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 104
    CAIXA 25
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 104 109 LEBES001 44640 00000 RS0019211200109

zabbix-proxy:
  psk: ec515dd62c89ef62a8ce801b104b6664581d5868cf7ea79396b296d3d7777418