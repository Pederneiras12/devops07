filial: 141
dhcpd:
  subnets:
    172.17.141.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.141.1
      broadcast_address: 172.17.141.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.141.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws005:
      fixed_address: 172.17.141.105
      hardware: ethernet 20:25:64:37:3D:90
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws005
        UNIREDE_LP_TER: ws005
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws006:
      fixed_address: 172.17.141.106
      hardware: ethernet 00:0F:EA:D6:B6:0C
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.141.120
      hardware: ethernet  70:5A:0F:69:0D:AD
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.141.121
      hardware: ethernet 70:5A:0F:69:D6:13
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.141.122
      hardware: ethernet 70:5A:0F:69:07:54
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.141.123
      hardware: ethernet 70:5A:0F:69:07:6D
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.141.124
      hardware: ethernet 70:5A:0F:69:F6:F8
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.141.125
      hardware: ethernet 94:C6:91:48:58:01
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv026:
      fixed_address: 172.17.141.126
      hardware: ethernet E0:69:95:3B:4C:6B
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv027:
      fixed_address: 172.17.141.127
      hardware: ethernet 94:C6:91:48:51:B2
      ltsp:
        UNIREDE_LP_MAT: ws001
    telefonia:
      fixed_address: 172.17.141.200
      hardware: ethernet 80:EE:73:BB:B6:8B
    catalogo:
      fixed_address: 172.17.141.223
      hardware: ethernet 84:7B:EB:E4:DE:4A
    p2k:
      fixed_address: 172.17.141.150
      hardware: ethernet FC:AA:14:F8:96:BC
    scanner-crediario:
      fixed_address: 172.17.141.240
      hardware: ethernet 30:05:5C:E0:BA:64
    relogio-ponto:
      fixed_address: 172.17.141.210
      hardware: ethernet FC:52:CE:80:70:DB
    P2K-PDV-0141-031:
      fixed_address: 172.17.141.131
      hardware: ethernet 70:5A:0F:69:0D:D8
    P2K-PDV-0141-032:
      fixed_address: 172.17.141.132
      hardware: ethernet 70:5A:0F:69:07:E8
    P2K-PDV-0141-033:
      fixed_address: 172.17.141.133
      hardware: ethernet 00:24:8C:FA:A2:3C
    P2K-PDV-0141-034:
      fixed_address: 172.17.141.134
      hardware: ethernet 70:5A:0F:69:F6:F2
    P2K-PDV-0141-035:
      fixed_address: 172.17.141.135
      hardware: ethernet 90:E6:BA:08:07:F7

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
  work5: |
    CLIEN B4
    ESTAB 141
    CAIXA 5
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work6: |
    CLIEN B4
    ESTAB 141
    CAIXA 6
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS1
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 141
    CAIXA 20
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 141
    CAIXA 21
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 141
    CAIXA 22
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 141
    CAIXA 23
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 141
    CAIXA 24
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 141
    CAIXA 25
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 141
    CAIXA 26
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work27: |
    CLIEN B4
    ESTAB 141
    CAIXA 27
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 141
    CAIXA 8
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM

cdlspc: 141 35 LEBES001 44640 00000 RS0017884200035

zabbix-proxy:
  psk: fe307b9bd978549c0e7351e459a63cdebb6d14507c97fddf4dc1540968f6c8e8