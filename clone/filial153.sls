filial: 153
dhcpd:
  subnets:
    172.20.153.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.20.153.1
      broadcast_address: 172.20.153.255
      subnet-mask: 255.255.255.0
      next_server: 172.20.153.254
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
      fixed_address: 172.20.153.101
      hardware: ethernet 1C:69:7A:8C:BA:38
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
    ws002:
      fixed_address: 172.20.153.102
      hardware: ethernet 00:00:00:00:00:03
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
      fixed_address: 172.20.153.103
      hardware: ethernet 00:00:00:00:00:04
      ltsp:
        SCREEN_02: ssh-adm 
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
    ws004:
      fixed_address: 172.20.153.104
      hardware: ethernet 00:00:00:00:00:05
      ltsp:
        SCREEN_02: ssh-adm
        UNIREDE_LP_MAT: ws006
        UNIREDE_LP_TER: ws006
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
    ws005:
      fixed_address: 172.20.153.105
      hardware: ethernet 00:00:00:00:00:06
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
      fixed_address: 172.20.153.106
      hardware: ethernet 00:00:00:00:00:07
      ltsp:
        SCREEN_02: ssh-adm 
        UNIREDE_LP_MAT: ws006
        UNIREDE_LP_TER: ws006
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
    pv020:
      fixed_address: 172.20.153.120
      hardware: ethernet 1C:69:7A:8C:DC:52
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.20.153.121
      hardware: ethernet 1C:69:7A:8C:BA:C6
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.20.153.122
      hardware: ethernet 1C:69:7A:8C:C6:94
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.20.153.123
      hardware: ethernet 1C:69:7A:8C:D8:F2
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv024:
      fixed_address: 172.20.153.124
      hardware: ethernet 1C:69:7A:8C:B8:93
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.20.153.125
      hardware: ethernet 1C:69:7A:8C:B8:97
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.20.153.126
      hardware: ethernet 00:00:00:00:00:01
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv027:
      fixed_address: 172.20.153.127
      hardware: ethernet 00:00:00:00:00:02
      ltsp:
        UNIREDE_LP_MAT: ws001        
    P2K-PDV-0153-031:
      fixed_address: 172.20.153.131
      hardware: ethernet 38:60:77:5C:81:14
    P2K-PDV-0153-032:
      fixed_address: 172.20.153.132
      hardware: ethernet 20:25:64:37:16:15
    P2K-PDV-0153-033:
      fixed_address: 172.20.153.133
      hardware: ethernet E0:69:95:3B:49:16
    P2K-PDV-0153-034:
      fixed_address: 172.20.153.134
      hardware: ethernet 20:25:64:37:18:17
    P2K-PDV-0153-035:
      fixed_address: 172.20.153.135
      hardware: ethernet E0:69:95:20:FB:18
    P2K-PDV-0153-036:
      fixed_address: 172.20.153.136
      hardware: ethernet 20:25:64:37:3A:19
    scanner-crediario:
      fixed_address: 172.20.153.240
      hardware: ethernet 3C:2A:F4:04:08:20
    relogio-ponto:
      fixed_address: 172.20.153.210
      hardware: ethernet FC:52:CE:80:82:21
    NB-CALL-TI-39:
      fixed_address: 172.20.153.230
      hardware: ethernet E0:DB:55:FF:1D:A2

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
    ESTAB 153
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
    ESTAB 153
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
    ESTAB 153
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
    ESTAB 153
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
    ESTAB 153
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
    ESTAB 153
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
    ESTAB 153
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
    ESTAB 153
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 153
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 153
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 153
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 153
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 153
    CAIXA 25
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 153
    CAIXA 26
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work27: |
    CLIEN B4
    ESTAB 153
    CAIXA 27
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES    
  work: |
    CLIEN B4
    ESTAB 153
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 0153 039 LEBES001 44640 00000 RS0017629200039

zabbix-proxy:
  psk: 175655cc87a61b0b5c36651070e078a1635cc299758a98dccfdcc0ef66abc3a7
