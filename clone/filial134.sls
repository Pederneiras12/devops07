filial: 134
dhcpd:
  subnets:
    172.17.134.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.134.1
      broadcast_address: 172.17.134.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.134.254
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
      fixed_address: 172.17.134.101
      hardware: ethernet 00:0F:EA:D7:53:2B
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws010
        UNIREDE_LP_TER: ws010
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws007:
      fixed_address: 172.17.134.107
      hardware: ethernet 74:27:EA:7A:4F:0B
      ltsp:
        SCREEN_02: ssh-adm
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws007
        UNIREDE_LP_TER: ws007
        SCREEN_04: ldm
    ws008:
      fixed_address: 172.17.134.108
      hardware: ethernet 74:27:EA:7D:8E:71
      ltsp:
        SCREEN_04: ldm
        SCREEN_02: ssh-adm
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    ws009:
      fixed_address: 172.17.134.109
      hardware: ethernet 74:27:EA:7A:4F:3D
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws010
        UNIREDE_LP_TER: ws010
    ws010:
      fixed_address: 172.17.134.110
      hardware: ethernet 74:27:EA:72:C8:FC
      ltsp:
        SCREEN_02: ssh-adm
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws010
        UNIREDE_LP_TER: ws010
    pv020:
      fixed_address: 172.17.134.120
      hardware: ethernet  74:27:EA:7A:4F:09
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.134.121
      hardware: ethernet 74:27:EA:7A:4F:7A
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.134.122
      hardware: ethernet 74:27:EA:72:C8:A5
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.134.123
      hardware: ethernet 74:27:EA:7A:4F:31
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.134.124
      hardware: ethernet 00:0F:EA:D6:CD:9D
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.134.125
      hardware: ethernet  74:27:EA:7A:4F:37
      ltsp:
        SCREEN_04: ldm
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.17.134.126
      hardware: ethernet  74:27:EA:7D:8E:84
      ltsp:
        SCREEN_04: ldm
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
        UNIREDE_LP_MAT: ws001
    p2k:
      fixed_address: 172.17.134.150
      hardware: ethernet FC:AA:14:F8:96:BC
    scanner-crediario:
      fixed_address: 172.17.134.240
      hardware: ethernet 30:05:5C:E0:BA:E0
    relogio-ponto:
      fixed_address: 172.17.134.210
      hardware: ethernet FC:52:CE:80:6F:90
    P2K-PDV-0134-031:
      fixed_address: 172.17.134.131
      hardware: ethernet 70:5A:0F:69:17:46
    P2K-PDV-0134-032:
      fixed_address: 172.17.134.132
      hardware: ethernet 00:21:97:C9:27:03
    P2K-PDV-0134-033:
      fixed_address: 172.17.134.133
      hardware: ethernet 70:5A:0F:69:17:57
    P2K-PDV-0134-034:
      fixed_address: 172.17.134.134
      hardware: ethernet 70:5A:0F:69:17:93
    P2K-PDV-0134-035:
      fixed_address: 172.17.134.135
      hardware: ethernet 70:5A:0F:69:17:CD
    P2K-PDV-0134-036:
      fixed_address: 172.17.134.136
      hardware: ethernet 74:27:EA:72:C9:03
  

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA yes
    RECIBO-BARRAS yes
    NFCE YES
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN SIM
    NFCE-CONTIGENCIA NAO
    GOON SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 134
    CAIXA 99
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
  work1: |
    CLIEN B4
    ESTAB 134
    CAIXA 1
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    VENDA NAO
  work7: |
    CLIEN B4
    ESTAB 134
    CAIXA 7
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work8: |
    CLIEN B4
    ESTAB 134
    CAIXA 8
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work9: |
    CLIEN B4
    ESTAB 134
    CAIXA 9
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 134
    CAIXA 10
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 134
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 134
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 134
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 134
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 134
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 134
    CAIXA 25
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 134
    CAIXA 26
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 134
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 134 145 LEBES001 44640 00000 RS0011376800145

zabbix-proxy:
  psk: e7b33dc18668bfffbc7042272da42f8f4bcd864f64ef5febb582ac629ea3911a