filial: 60
dhcpd:
  subnets:
    172.20.60.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.20.60.1
      broadcast_address: 172.20.60.255
      subnet-mask: 255.255.255.0
      next_server: 172.20.60.254
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
      fixed_address: 172.20.60.101
      hardware: ethernet 74:27:EA:7A:4C:93
      ltsp:
        SCREEN_02: ssh-adm 
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws006
        UNIREDE_LP_TER: ws006
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws002:
      fixed_address: 172.20.60.102
      hardware: ethernet 00:1A:4D:A1:E5:00
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws003:
      fixed_address: 172.20.60.103
      hardware: ethernet 00:1C:C0:5C:DE:37
      ltsp:
        SCREEN_02: ssh-adm 
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
    ws004:
      fixed_address: 172.20.60.104
      hardware: ethernet 00:0F:EA:AA:31:DE
      ltsp:
        SCREEN_02: ssh-adm
        UNIREDE_LP_MAT: ws006
        UNIREDE_LP_TER: ws006
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
    ws005:
      fixed_address: 172.20.60.105
      hardware: ethernet 00:0F:EA:D7:3A:5C
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws006
        UNIREDE_LP_TER: ws006
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws006:
      fixed_address: 172.20.60.106
      hardware: ethernet 00:0F:EA:D6:90:79
      ltsp:
        SCREEN_02: ssh-adm 
        UNIREDE_LP_MAT: ws006
        UNIREDE_LP_TER: ws006
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
    pv020:
      fixed_address: 172.20.60.120
      hardware: ethernet 74:27:EA:7A:4F:35
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.20.60.121
      hardware: ethernet FC:AA:14:F8:96:3A
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.20.60.122
      hardware: ethernet 94:C6:91:47:B1:83
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.20.60.123
      hardware: ethernet FC:AA:14:F8:9D:F0
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv024:
      fixed_address: 172.20.60.124
      hardware: ethernet 00:24:8C:FF:FB:B2
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.20.60.125
      hardware: ethernet 00:1F:C6:90:C2:3D
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.20.60.126
      hardware: ethernet 00:1C:C0:54:BC:C5
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0060-031:
      fixed_address: 172.20.60.131
      hardware: ethernet 38:60:77:5C:81:17
    P2K-PDV-0060-032:
      fixed_address: 172.20.60.132
      hardware: ethernet 20:25:64:37:16:18
    P2K-PDV-0060-033:
      fixed_address: 172.20.60.133
      hardware: ethernet E0:69:95:3B:49:36
    P2K-PDV-0060-034:
      fixed_address: 172.20.60.134
      hardware: ethernet 20:25:64:37:18:5A
    P2K-PDV-0060-035:
      fixed_address: 172.20.60.135
      hardware: ethernet E0:69:95:20:FB:EA
    P2K-PDV-0060-036:
      fixed_address: 172.20.60.136
      hardware: ethernet 20:25:64:37:3A:CF
    scanner-crediario:
      fixed_address: 172.20.60.240
      hardware: ethernet 3C:2A:F4:04:08:90
    relogio-ponto:
      fixed_address: 172.20.60.210
      hardware: ethernet FC:52:CE:80:82:2F
    NB-CALL-AUD-6:
      fixed_address: 172.20.60.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.20.60.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.20.60.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.20.60.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.20.60.229
      hardware: ethernet F4:30:B9:A8:B7:ED      

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS YES
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 60
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
    ESTAB 60
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work2: |
    CLIEN B4
    ESTAB 60
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work3: |
    CLIEN B4
    ESTAB 60
    CAIXA 3
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work4: |
    CLIEN B4
    ESTAB 60
    CAIXA 4
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work5: |
    CLIEN B4
    ESTAB 60
    CAIXA 5
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work6: |
    CLIEN B4
    ESTAB 60
    CAIXA 6
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 60
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 60
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 60
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 60
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 60
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 60
    CAIXA 25
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 60
    CAIXA 26
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 60
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 060 039 LEBES001 44640 00000 RS0017629200039

zabbix-proxy:
  psk: 175655cc87a61b0b5c36651070e078a1635cc299758a98dccfdcc0ef66abc3a7