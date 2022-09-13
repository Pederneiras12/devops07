filial: 59
dhcpd:
  subnets:
    172.17.59.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.59.1
      broadcast_address: 172.17.59.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.59.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws007:
      fixed_address: 172.17.59.107
      hardware: ethernet 00:0F:EA:D1:4C:E6
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws007
        UNIREDE_LP_TER: ws007
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws008:
      fixed_address: 172.17.59.108
      hardware: ethernet 00:0F:EA:D7:45:55
      ltsp:
        SCREEN_04: ldm
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        SCREEN_02: ssh-adm
        LIKE: OLD_MONITOR
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws007
        UNIREDE_LP_TER: ws007
    ws009:
      fixed_address: 172.17.59.109
      hardware: ethernet 00:1F:C6:9D:B1:70
      ltsp:
        SCREEN_02: ssh-adm
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws007
        UNIREDE_LP_TER: ws007
    ws021:
      fixed_address: 172.17.59.121
      hardware: ethernet 00:0F:EA:D6:CD:9D
      ltsp:
        SCREEN_02: ssh-adm
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws007
        UNIREDE_LP_TER: ws007
    pv010:
      fixed_address: 172.17.59.110
      hardware: ethernet FC:AA:14:F8:98:51
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv011:
      fixed_address: 172.17.59.111
      hardware: ethernet 70:71:BC:52:3D:40
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv012:
      fixed_address: 172.17.59.112
      hardware: ethernet 94:C6:91:48:41:D0
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv013:
      fixed_address: 172.17.59.113
      hardware: ethernet 00:0F:EA:D6:CD:4D
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv014:
      fixed_address: 172.17.59.114
      hardware: ethernet 38:60:77:5C:65:90
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv015:
      fixed_address: 172.17.59.115
      hardware: ethernet 00:0F:EA:D6:7B:93
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv016:
      fixed_address: 172.17.59.116
      hardware: ethernet 00:0F:EA:D7:2B:B4
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv017:
      fixed_address: 172.17.59.117
      hardware: ethernet 00:1F:C6:9D:AA:46
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    p2k:
      fixed_address: 172.17.59.150
      hardware: ethernet FC:AA:14:F8:96:BC
    relogio-ponto:
      fixed_address: 172.17.59.210
      hardware: ethernet FC:52:CE:80:70:AE
    scanner-crediario:
      fixed_address: 172.17.59.240
      hardware: ethernet 3C:2A:F4:21:C2:3F
    P2K-PDV-0059-031:
      fixed_address: 172.17.59.131
      hardware: ethernet 74:27:EA:7A:4F:13
    P2K-PDV-0059-032:
      fixed_address: 172.17.59.132
      hardware: ethernet E0:69:95:FE:69:61 
    P2K-PDV-0059-033:
      fixed_address: 172.17.59.133
      hardware: ethernet 48:5B:39:BB:26:88
    P2K-PDV-0059-034:
      fixed_address: 172.17.59.134
      hardware: ethernet 74:27:EA:7A:4F:1E
    P2K-PDV-0059-035:
      fixed_address: 172.17.59.135
      hardware: ethernet 74:27:EA:7A:4F:1A
    P2K-PDV-0059-036:
      fixed_address: 172.17.59.136
      hardware: ethernet 74:27:EA:7A:4F:2C

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA yes
    RECIBO-BARRAS yes
    NFCE yes
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 59
    CAIXA 99
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    VENDA NAO
  work7: |
    CLIEN B4
    ESTAB 59
    CAIXA 7
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work8: |
    CLIEN B4
    ESTAB 59
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
    ESTAB 59
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
    ESTAB 59
    CAIXA 10
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work11: |
    CLIEN B4
    ESTAB 59
    CAIXA 11
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work12: |
    CLIEN B4
    ESTAB 59
    CAIXA 12
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work13: |
    CLIEN B4
    ESTAB 59
    CAIXA 13
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work14: |
    CLIEN B4
    ESTAB 59
    CAIXA 14
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work15: |
    CLIEN B4
    ESTAB 59
    CAIXA 15
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work16: |
    CLIEN B4
    ESTAB 59
    CAIXA 16
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work17: |
    CLIEN B4
    ESTAB 59
    CAIXA 17
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 59
    CAIXA 21
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work: |
    CLIEN B4
    ESTAB 59
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 059 033 LEBES001 44640 00000 RS0017617600033

zabbix-proxy:
  psk: 92cef1579b966d7ad472d8f9854e5c7ad287018e26ea660f328ded8caf8bbe5a