filial: 79
dhcpd:
  subnets:
    172.17.79.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.79.1
      broadcast_address: 172.17.79.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.79.254
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
      fixed_address: 172.17.79.101
      hardware: ethernet 94:DE:80:F1:80:2F
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
    ws002:
      fixed_address: 172.17.79.102
      hardware: ethernet FC:AA:14:F6:71:4A
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
      fixed_address: 172.17.79.120
      hardware: ethernet 00:0F:EA:D6:FE:00
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.79.121
      hardware: ethernet F4:4D:30:83:C0:49
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.79.122
      hardware: ethernet 00:0F:EA:D1:BF:5B
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.79.123
      hardware: ethernet FC:AA:14:F8:98:37
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv024:
      fixed_address: 172.17.79.124
      hardware: ethernet 00:0F:EA:D2:1F:1B
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.79.125
      hardware: ethernet  00:0F:EA:D1:4C:E7
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.17.79.126
      hardware: ethernet  74:27:EA:7A:4F:A2
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    P2K-PDV-0079-031:
      fixed_address: 172.17.79.131
      hardware: ethernet 38:60:77:26:E1:3F
    P2K-PDV-0079-032:
      fixed_address: 172.17.79.132
      hardware: ethernet E0:69:95:56:B0:4A
    P2K-PDV-0079-033:
      fixed_address: 172.17.79.133
      hardware: ethernet 00:1F:C6:9D:B2:11
    P2K-PDV-0079-034:
      fixed_address: 172.17.79.134
      hardware: ethernet 70:71:BC:4E:53:A7
    P2K-PDV-0079-035:
      fixed_address: 172.17.79.135
      hardware: ethernet E0:69:95:3B:45:C9
    p2K-catag-079-001:
      fixed_address: 172.17.79.230
      hardware: ethernet F4:8E:38:E6:87:63
    relogio-ponto:
      fixed_address: 172.17.79.210
      hardware: ethernet FC:52:CE:80:3A:0B
    scanner-crediario:
      fixed_address: 172.17.79.240
      hardware: ethernet 3C:2A:F4:21:C2:8D
    NB-CALL-AUD-6:
      fixed_address: 172.17.79.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.79.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.79.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.79.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.79.229
      hardware: ethernet F4:30:B9:A8:B7:ED      
      
admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    NFCE YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    LIBERALIMITETOKEN SIM
    VENDE-SEGURO SIM
    NFCE-CONTIGENCIA SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
    GOON SIM
  work99: |
    CLIEN b4
    ESTAB 79
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
    ESTAB 79
    CAIXA 1 
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work2: |
    CLIEN B4
    ESTAB 79
    CAIXA 2
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
    ESTAB 79
    CAIXA 20
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 79
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 79
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 79
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 79
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 79
    CAIXA 25
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 79
    CAIXA 26
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 79
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 079 076 LEBES001 44640 00000 RS0017872800076

zabbix-proxy:
  psk: 9c7c4ca56d111f9d6e67e26a22f9a9b52c5da908c542d9f1af5b25b152e9f35d