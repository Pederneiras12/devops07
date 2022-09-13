filial: 80
dhcpd:
  subnets:
    172.17.80.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.80.1
      broadcast_address: 172.17.80.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.80.254
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
      fixed_address: 172.17.80.101
      hardware: ethernet 20:25:64:37:0B:FA
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
    ws002:
      fixed_address: 172.17.80.102
      hardware: ethernet 94:C6:91:48:54:9A
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
    ws003:
      fixed_address: 172.17.80.103
      hardware: ethernet 00:0F:EA:D1:C7:63
      ltsp:
        SCREEN_02: ssh-adm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
    pv020:
      fixed_address: 172.17.80.120
      hardware: ethernet 00:0F:EA:D6:BB:7D
      ltsp:
        SCREEN_03: ssh-adm      
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.80.121
      hardware: ethernet 00:24:1D:F8:FC:B6
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.80.122
      hardware: ethernet 70:5A:0F:69:FC:AB
      ltsp:
        SCREEN_03: ssh-adm        
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.80.123
      hardware: ethernet E0:69:95:3B:4B:C8
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.80.124
      hardware: ethernet 00:24:8C:FA:97:6B
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.80.125
      hardware: ethernet F4:4D:30:82:2A:8A
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0080-031:
      fixed_address: 172.17.80.131
      hardware: ethernet E0:69:95:3B:4A:4D
    P2K-PDV-0080-032:
      fixed_address: 172.17.80.132
      hardware: ethernet 20:25:64:37:18:56
    P2K-PDV-0080-033:
      fixed_address: 172.17.80.133
      hardware: ethernet 00:A1:B0:10:12:D3
    P2K-PDV-0080-034:
      fixed_address: 172.17.80.134
      hardware: ethernet 20:25:64:37:16:F9
    P2K-PDV-0080-035:
      fixed_address: 172.17.80.135
      hardware: ethernet 90:E6:BA:07:FB:F1
    P2K-PDV-0080-036:
      fixed_address: 172.17.80.136
      hardware: ethernet 20:25:64:37:3B:3C
    P2K-PDV-0080-037:
      fixed_address: 172.17.80.137
      hardware: ethernet 20:25:64:37:3C:C7
    scanner-crediario:
      fixed_address: 172.17.80.240
      hardware: ethernet 30:05:5C:AC:58:D2
    relogio-ponto:
      fixed_address: 172.17.80.210
      hardware: ethernet FC:52:CE:80:8D:9E
    NB-CALL-AUD-6:
      fixed_address: 172.17.80.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.80.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.80.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.80.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.80.229
      hardware: ethernet F4:30:B9:A8:B7:ED
admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN SIM
    NFCE-CONTIGENCIA NAO
    NFCE YES
    GOON SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 80
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
    ESTAB 80
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
    ESTAB 80
    CAIXA 2
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work3: |
    CLIEN B4
    ESTAB 80
    CAIXA 3
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 80
    CAIXA 30
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 80
    CAIXA 21
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 80
    CAIXA 22
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 80
    CAIXA 23
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 80
    CAIXA 24
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 80
    CAIXA 25
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 080 78 LEBES001 44640 00000 RS0017885900078

zabbix-proxy:
  psk: 4d2241982726ce2a0bb28f06810cad44998980fa2d522a06f76361dd3bb1805b