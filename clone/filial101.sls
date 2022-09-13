filial: 101
dhcpd:
  subnets:
    172.17.101.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.101.1
      broadcast_address: 172.17.101.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.101.254
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
      fixed_address: 172.17.101.101
      hardware: ethernet 00:0F:EA:D6:B9:6C
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws002:
      fixed_address: 172.17.101.102
      hardware: ethernet 00:0F:EA:D1:D1:AA
      ltsp:
        SCREEN_02: ssh-adm      
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws012:
      fixed_address: 172.17.101.112
      hardware: ethernet 48:5B:39:F8:7A:7E
      ltsp:
        SCREEN_02: ssh-adm
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
    ws013:
      fixed_address: 172.17.101.113
      hardware: ethernet 00:0F:EA:D6:E7:7E
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
    ws014:
      fixed_address: 172.17.101.114
      hardware: ethernet 00:0F:EA:D6:D9:34
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.101.120
      hardware: ethernet 00:25:11:E9:EF:50
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.101.121
      hardware: ethernet 00:0F:EA:D6:DC:BB
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.101.122
      hardware: ethernet 00:1C:25:AD:6B:7A
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.101.123
      hardware: ethernet 00:25:11:E9:E1:9E
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.101.124
      hardware: ethernet 00:0F:EA:D7:42:56
      ltsp:
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.101.125
      hardware: ethernet 90:E6:BA:07:FA:C4
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.17.101.126
      hardware: ethernet 00:1D:7D:E2:CD:43
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    pv027:
      fixed_address: 172.17.101.127
      hardware: ethernet 00:0F:EA:A5:77:AC
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv028:
      fixed_address: 172.17.101.128
      hardware: ethernet 00:24:8C:FA:C0:A2
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv029:
      fixed_address: 172.17.101.129
      hardware: ethernet  00:24:8C:84:76:86
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv050:
      fixed_address: 172.17.101.150
      hardware: ethernet 00:1F:C6:9D:AC:99
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv051:
      fixed_address: 172.17.101.151
      hardware: ethernet 00:0F:EA:D7:46:A3
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv052:
      fixed_address: 172.17.101.152
      hardware: ethernet 00:0F:EA:D2:2B:23
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv053:
      fixed_address: 172.17.101.153
      hardware: ethernet 00:1F:D0:E4:81:86
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    scanner-crediario:
      fixed_address: 172.17.101.240
      hardware: ethernet 30:05:5C:E0:BA:F8
    relogio-ponto:
      fixed_address: 172.17.101.210
      hardware: ethernet FC:52:CE:80:70:B8
    P2K-PDV-0101-032:
      fixed_address: 172.17.101.132
      hardware: ethernet 70:5A:0F:69:07:69
    P2K-PDV-0101-033:
      fixed_address: 172.17.101.133
      hardware: ethernet 94:DE:80:F1:7E:45
    P2K-PDV-0101-034:
      fixed_address: 172.17.101.134
      hardware: ethernet 70:5A:0F:69:07:B1
    P2K-PDV-0101-035:
      fixed_address: 172.17.101.135
      hardware: ethernet F4:4D:30:83:D1:0A
    P2K-PDV-0101-036:
      fixed_address: 172.17.101.136
      hardware: ethernet F4:4D:30:83:F5:1F

admcom:
  work98: |
    CLIEN B4
    ESTAB 101
    CAIXA 98
    RAMO  ?
    FISCAL
    PREVENDA YES
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    NFCE YES
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN SIM
    NFCE-CONTIGENCIA NAO
    GOON SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN b4
    ESTAB 101
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
    ESTAB 101
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
    ESTAB 101
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work12: |
    CLIEN B4
    ESTAB 101
    CAIXA 12
    RAMO  ?
    FISCAL 
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work13: |
    CLIEN B4
    ESTAB 101
    CAIXA 13
    RAMO  ?
    FISCAL 
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work14: |
    CLIEN B4
    ESTAB 101
    CAIXA 14
    RAMO  ?
    FISCAL 
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 101
    CAIXA 20
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work21: |
    CLIEN B4
    ESTAB 101
    CAIXA 21
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work22: |
    CLIEN B4
    ESTAB 101
    CAIXA 22
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work23: |
    CLIEN B4
    ESTAB 101
    CAIXA 23
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work24: |
    CLIEN B4
    ESTAB 101
    CAIXA 24
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work25: |
    CLIEN B4
    ESTAB 101
    CAIXA 25
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work26: |
    CLIEN B4
    ESTAB 101
    CAIXA 26
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work27: |
    CLIEN B4
    ESTAB 101
    CAIXA 27
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work28: |
    CLIEN B4
    ESTAB 101
    CAIXA 28
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work29: |
    CLIEN B4
    ESTAB 101
    CAIXA 29
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work50: |
    CLIEN B4
    ESTAB 101
    CAIXA 50
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work51: |
    CLIEN B4
    ESTAB 101
    CAIXA 51
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work52: |
    CLIEN B4
    ESTAB 101
    CAIXA 52
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work: |
    CLIEN B4
    ESTAB 101
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p

cdlspc: 101 105 LEBES001 44640 00000 RS0017998900105

zabbix-proxy:
  psk: be218d33cd90b1c967517b2d47bc95713e5b56c15a7334f596251a333fbd443b