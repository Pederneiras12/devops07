filial: 122
dhcpd:
  subnets:
    172.17.122.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.122.1
      broadcast_address: 172.17.122.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.122.254
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
      fixed_address: 172.17.122.102
      hardware: ethernet 50:B3:63:02:A5:A1
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws005:
      fixed_address: 172.17.122.105
      hardware: ethernet 94:C6:91:48:55:12
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.122.120
      hardware: ethernet 00:0F:EA:D6:7D:BC
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws002
         # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.122.121
      hardware: ethernet 00:1F:C6:9D:B8:A2
      ltsp:
        UNIREDE_LP_MAT: ws002
    pv022:
      fixed_address: 172.17.122.122
      hardware: ethernet 1C:69:7A:8C:C4:54
      ltsp:
        UNIREDE_LP_MAT: ws002
    pv023:
      fixed_address: 172.17.122.123
      hardware: ethernet 70:71:BC:36:CB:CF
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws002
    pv024:
      fixed_address: 172.17.122.124
      hardware: ethernet 94:C6:91:48:68:CA
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws002
         # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.122.125
      hardware: ethernet F4:4D:30:83:BE:E5
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws002
         # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    P2K-PDV-0122-031:
      fixed_address: 172.17.122.131
      hardware: ethernet 00:1F:C6:FF:57:5A
    P2K-PDV-0122-032:
      fixed_address: 172.17.122.132
      hardware: ethernet 38:60:77:27:03:28
    P2K-PDV-0122-033:
      fixed_address: 172.17.122.133
      hardware: ethernet 90:E6:BA:9B:4E:8C

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA yes
    RECIBO-BARRAS yes
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    NFCE YES
    NFCE-CONTIGENCIA SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 122
    CAIXA 99
    RAMO  ?
    FISCAL 
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    COMECF NAO  
  work1: |
    CLIEN B4
    ESTAB 122
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    ABRE-GAVETA SIM
    COMECF NAO
    VENDA NAO
  work2: |
    CLIEN B4
    ESTAB 122
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    ABRE-GAVETA SIM
    COMECF NAO
    VENDA NAO
  work5: |
    CLIEN B4
    ESTAB 122
    CAIXA 5
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    ABRE-GAVETA SIM
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 122
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 122
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 122
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 122
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 122
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 122
    CAIXA 25
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 122
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 122 132 LEBES001 44640 00000 RS0240005700132

zabbix-proxy:
  psk: d0d42ba8d3a1123fbbcf547b92a4a6cd7ad545adc3b54e6dfe761e092de8acb7