filial: 152
dhcpd:
  subnets:
    172.20.152.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.20.152.1
      broadcast_address: 172.20.152.255
      subnet-mask: 255.255.255.0
      next_server: 172.20.152.254
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
      fixed_address: 172.20.152.101
      hardware: ethernet 1C:69:7A:8C:C9:97
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
      fixed_address: 172.20.152.102
      hardware: ethernet 00:00:00:00:00:24
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
    pv020:
      fixed_address: 172.20.152.120
      hardware: ethernet 1C:69:7A:8C:CD:E1
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.20.152.121
      hardware: ethernet 1C:69:7A:8C:C9:81
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.20.152.122
      hardware: ethernet 1C:69:7A:8C:CD:E0
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.20.152.123
      hardware: ethernet 1C:69:7A:8C:CD:07
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv024:
      fixed_address: 172.20.152.124
      hardware: ethernet 1C:69:7A:8C:CA:D4
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.20.152.125
      hardware: ethernet 1C:69:7A:8C:CD:E3
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.20.152.126
      hardware: ethernet 1C:69:7A:8C:CF:CC
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv027:
      fixed_address: 172.20.152.127
      hardware: ethernet 1C:69:7A:8C:CE:00
      ltsp:
        UNIREDE_LP_MAT: ws001        
    pv028:
      fixed_address: 172.20.152.128
      hardware: ethernet 1C:69:7A:8C:CD:EC
      ltsp:
        UNIREDE_LP_MAT: ws001        
    P2K-PDV-0152-031:
      fixed_address: 172.20.152.131
      hardware: ethernet 00:00:00:00:00:33
    P2K-PDV-0152-032:
      fixed_address: 172.20.152.132
      hardware: ethernet 00:00:00:00:00:34
    P2K-PDV-0152-033:
      fixed_address: 172.20.152.133
      hardware: ethernet 00:00:00:00:00:35
    P2K-PDV-0152-034:
      fixed_address: 172.20.152.134
      hardware: ethernet 00:00:00:00:00:36
    P2K-PDV-0152-035:
      fixed_address: 172.20.152.135
      hardware: ethernet 00:00:00:00:00:37
    P2K-PDV-0152-036:
      fixed_address: 172.20.152.136
      hardware: ethernet 00:00:00:00:00:38
    P2K-PDV-0152-037:
      fixed_address: 172.20.152.137
      hardware: ethernet 00:00:00:00:00:39
    P2K-PDV-0152-038:
      fixed_address: 172.20.152.138
      hardware: ethernet 00:00:00:00:00:40
    P2K-PDV-0152-039:
      fixed_address: 172.20.152.139
      hardware: ethernet 00:00:00:00:00:41
    scanner-crediario:
      fixed_address: 172.20.152.240
      hardware: ethernet 00:00:00:00:00:42
    relogio-ponto:
      fixed_address: 172.20.152.210
      hardware: ethernet 00:00:00:00:00:43
    NB-CALL-TI-39:
      fixed_address: 172.20.152.230
      hardware: ethernet E0:DB:55:FF:1D:A2
    NB-CALL-TI-20:
      fixed_address: 172.20.152.231
      hardware: ethernet 00:09:0F:AA:00:01

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
    ESTAB 152
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
    ESTAB 152
    CAIXA 98
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO    
    PREVENDA yes
  work1: |
    CLIEN B4
    ESTAB 152
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
    ESTAB 152
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 152
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 152
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 152
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 152
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 152
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 152
    CAIXA 25
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 152
    CAIXA 26
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work27: |
    CLIEN B4
    ESTAB 152
    CAIXA 27
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES    
  work28: |
    CLIEN B4
    ESTAB 152
    CAIXA 28
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES    
  work: |
    CLIEN B4
    ESTAB 152
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 0152 039 LEBES001 44640 00000 RS0017629200039

zabbix-proxy:
  psk: 175655cc87a61b0b5c36651070e078a1635cc299758a98dccfdcc0ef66abc3a7
