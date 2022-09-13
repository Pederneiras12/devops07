filial: 01
dhcpd:
  subnets:
    172.17.22.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.22.1
      broadcast_address: 172.17.22.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.22.254
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
      fixed_address: 172.17.22.101
      hardware: ethernet 00:0F:EA:D1:FB:5F
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9100
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws009:
      fixed_address: 172.17.22.109
      hardware: ethernet 00:0F:EA:D2:30:39
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.22.120
      hardware: ethernet 00:1F:C6:9D:B9:3D
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.22.121
      hardware: ethernet 00:1F:C6:9D:A9:FE
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.22.122
      hardware: ethernet 00:0F:EA:D6:BB:8F
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.22.123
      hardware: ethernet E0:69:95:20:FB:EA
      ltsp:
        SCREEN_04: ldm
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.22.124
      hardware: ethernet 00:0F:EA:D2:34:14
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.22.125
      hardware: ethernet FC:AA:14:F6:75:38
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv026:
      fixed_address: 172.17.22.126
      hardware: ethernet 00:0F:EA:D1:F3:2D
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv027:
      fixed_address: 172.17.22.127
      hardware: ethernet F4:4D:30:8C:E9:8D
      ltsp:
        SCREEN_04: ldm
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv028:
      fixed_address: 172.17.22.128
      hardware: ethernet 00:1F:C6:9D:A6:32
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    pv029:
      fixed_address: 172.17.22.129
      hardware: ethernet 00:0F:EA:D6:8D:5A
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv030:
      fixed_address: 172.17.22.130
      hardware: ethernet F4:4D:30:8C:EA:1E
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0001-031:
      fixed_address: 172.17.22.131
      hardware: ethernet FC:AA:14:F6:7B:6C
    P2K-PDV-0001-032:
      fixed_address: 172.17.22.132
      hardware: ethernet FC:AA:14:F6:79:F7
    P2K-PDV-0001-033:
      fixed_address: 172.17.22.133
      hardware: ethernet FC:AA:14:F6:72:F4
    P2K-PDV-0001-034:
      fixed_address: 172.17.22.134
      hardware: ethernet 94:DE:80:F2:7F:62
    P2K-PDV-0001-035:
      fixed_address: 172.17.22.135
      hardware: ethernet 78:2B:CB:BF:37:54
    P2K-PDV-0001-036:
      fixed_address: 172.17.22.136
      hardware: ethernet 00:1C:25:AD:5C:3A
    scanner-crediario:
      fixed_address: 172.17.22.240
      hardware: ethernet 30:05:5C:AC:15:EC
    relogio-ponto:
      fixed_address: 172.17.22.210
      hardware: ethernet FC:52:CE:80:8D:AE
    NB-CALL-AUD-6:
      fixed_address: 172.17.22.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.22.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.22.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.22.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.22.229
      hardware: ethernet F4:30:B9:A8:B7:ED      

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA  YES
    RECIBO-BARRAS YES
    FEIRAO-NOME-LIMPO SIM
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
    NFCE YES
  work99: |
    CLIEN B4
    ESTAB 01
    CAIXA 99
    RAMO  ?
    FISCAL 
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    COMECF NAO
    VENDA NAO
  work98: |
    CLIEN B4
    ESTAB 01
    CAIXA 98
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
    VENDA NAO
  work1: |
    CLIEN B4
    ESTAB 01
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    COMECF NAO
    VENDA NAO
  work9: |
    CLIEN B4
    ESTAB 01
    CAIXA 9
    RAMO ?
    FISCAL
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO
    COMECF NAO
  work20: |
    CLIEN B4
    ESTAB 01
    CAIXA 20
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work21: |
    CLIEN B4
    ESTAB 01
    CAIXA 21
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work22: |
    CLIEN B4
    ESTAB 01
    CAIXA 22
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work23: |
    CLIEN B4
    ESTAB 01
    CAIXA 23
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work24: |
    CLIEN B4
    ESTAB 01
    CAIXA 24
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work25: |
    CLIEN B4
    ESTAB 01
    CAIXA 25
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work26: |
    CLIEN B4
    ESTAB 01
    CAIXA 26
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work27: |
    CLIEN B4
    ESTAB 01
    CAIXA 27
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work28: |
    CLIEN B4
    ESTAB 01
    CAIXA 28
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work29: |
    CLIEN B4
    ESTAB 01
    CAIXA 29
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work30: |
    CLIEN B4
    ESTAB 01
    CAIXA 30
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 01
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS1
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO
    PAGAMENTO SIM

cdlspc: 001 89 LEBES001 44640 00000 RS0017956700089
      
zabbix-proxy:
  psk: 89ca6cf140c6b57f46af6ecead0f18dc848bf123611903bed96b6c1823f3c959