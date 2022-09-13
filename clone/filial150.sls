filial: 150
dhcpd:
  subnets:
    172.17.150.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.150.1
      broadcast_address: 172.17.150.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.150.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws006:
      fixed_address: 172.17.150.106
      hardware: ethernet 00:0F:EA:D6:7B:60
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws006
        UNIREDE_LP_TER: ws006
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws011:
      fixed_address: 172.17.150.111
      hardware: ethernet 74:27:EA:7D:98:E4
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv016:
      fixed_address: 172.17.150.116
      hardware: ethernet 00:0F:EA:D1:97:67
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv017:
      fixed_address: 172.17.150.117
      hardware: ethernet 94:C6:91:45:EF:74
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv018:
      fixed_address: 172.17.150.118
      hardware: ethernet 00:0F:EA:D6:DF:7F
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv019:
      fixed_address: 172.17.150.119
      hardware: ethernet 00:0F:EA:D1:CB:94
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv020:
      fixed_address: 172.17.150.120
      hardware: ethernet F4:4D:30:8C:FB:9A
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.150.121
      hardware: ethernet 70:5A:0F:69:07:62
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.150.122
      hardware: ethernet 00:1F:C6:9D:C4:08
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.150.123
      hardware: ethernet 70:5A:0F:69:07:CA
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.150.124
      hardware: ethernet 70:5A:0F:69:F6:DB
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.150.125
      hardware: ethernet 70:5A:0F:69:0D:74
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.17.150.126
      hardware: ethernet 00:0F:EA:23:3E:70
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv027:
      fixed_address: 172.17.150.127
      hardware: ethernet 70:5A:0F:69:0D:42
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv028:
      fixed_address: 172.17.150.128
      hardware: ethernet 70:5A:0F:69:07:D8
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv029:
      fixed_address: 172.17.150.129
      hardware: ethernet 70:5A:0F:69:0D:85
      ltsp:
        UNIREDE_LP_MAT: ws001
    telefonia:
      fixed_address: 172.17.150.200
      hardware: ethernet 80:EE:73:BB:B6:1A
    catalogo:
      fixed_address: 172.17.150.223
      hardware: ethernet 84:7B:EB:E4:E8:31
    p2k:
      fixed_address: 172.17.150.150
      hardware: ethernet FC:AA:14:F8:96:BC
    scanner-crediario:
      fixed_address: 172.17.150.240
      hardware: ethernet 30:05:5C:AC:59:23
    relogio-ponto:
      fixed_address: 172.17.150.210
      hardware: ethernet FC:52:CE:80:70:7A
    P2K-PDV-0150-031:
      fixed_address: 172.17.150.131
      hardware: ethernet 94:C6:91:48:58:01
    P2K-PDV-0150-032:
      fixed_address: 172.17.150.132
      hardware: ethernet 94:C6:91:48:51:87
    P2K-PDV-0150-033:
      fixed_address: 172.17.150.133
      hardware: ethernet 94:C6:91:48:56:26  
    P2K-PDV-0150-034:
      fixed_address: 172.17.150.134
      hardware: ethernet 70:5A:0F:69:F6:84
    P2K-PDV-0150-035:
      fixed_address: 172.17.150.135
      hardware: ethernet 70:5A:0F:69:07:32
    P2K-PDV-0150-036:
      fixed_address: 172.17.150.136
      hardware: ethernet 70:5A:0F:69:0D:0C 
    P2K-PDV-0150-037:
      fixed_address: 172.17.150.137
      hardware: ethernet 70:5A:0F:69:07:C9
    P2K-PDV-0150-038:
      fixed_address: 172.17.150.138
      hardware: ethernet 70:5A:0F:69:F6:59 
    P2K-PDV-0150-039:
      fixed_address: 172.17.150.139
      hardware: ethernet 70:5A:0F:69:0D:A4
    P2K-PDV-0150-040:
      fixed_address: 172.17.150.140
      hardware: ethernet 94:C6:91:48:56:80
admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work6: |
    CLIEN B4
    ESTAB 150
    CAIXA 6
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS1
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work11: |
    CLIEN B4
    ESTAB 150
    CAIXA 11
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work16: |
    CLIEN B4
    ESTAB 150
    CAIXA 16
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work17: |
    CLIEN B4
    ESTAB 150
    CAIXA 17
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work18: |
    CLIEN B4
    ESTAB 150
    CAIXA 18
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work19: |
    CLIEN B4
    ESTAB 150
    CAIXA 19
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work20: |
    CLIEN B4
    ESTAB 150
    CAIXA 20
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 150
    CAIXA 21
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 150
    CAIXA 22
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 150
    CAIXA 23
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 150
    CAIXA 24
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 150
    CAIXA 25
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 150
    CAIXA 26
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work27: |
    CLIEN B4
    ESTAB 150
    CAIXA 27
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work28: |
    CLIEN B4
    ESTAB 150
    CAIXA 28
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work29: |
    CLIEN B4
    ESTAB 150
    CAIXA 29
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 150
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO
    PAGAMENTO NAO

cdlspc: 150 168 LEBES001 44640 00000 RS0019424100168

zabbix-proxy:
  psk: ce4845db57a93d5a07fb46abb33fe8af2b1847b277c7d01d3592a17c3c71a213