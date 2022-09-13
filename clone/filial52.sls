filial: 52
dhcpd:
  subnets:
    172.17.52.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.52.1
      broadcast_address: 172.17.52.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.52.254
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
      fixed_address: 172.17.52.105
      hardware: ethernet 00:0F:EA:D1:D1:AA
      ltsp:
        PRINTER_0_DEVICE: /dev/lp0
        SCREEN_04: ldm
        SCREEN_02: ssh-adm
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws005
        UNIREDE_LP_TER: ws005
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws009:
      fixed_address: 172.17.52.109
      hardware: ethernet 94:C6:91:43:B9:5B
      ltsp:
        SCREEN_02: ssh-adm      
        SCREEN_04: ldm      
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws009
        UNIREDE_LP_TER: ws009
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR        
    ws010:
      fixed_address: 172.17.52.110
      hardware: ethernet 00:1F:C6:9D:B3:8E
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws010
        UNIREDE_LP_TER: ws010
    ws011:
      fixed_address: 172.17.52.111
      hardware: ethernet 00:1F:C6:9D:AE:AE
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    pv020:
      fixed_address: 172.17.52.120
      hardware: ethernet 00:0F:EA:23:3C:C3
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.52.121
      hardware: ethernet E0:69:95:3B:4E:AB
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.52.122
      hardware: ethernet 00:27:0E:1E:CE:94
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.52.123
      hardware: ethernet 00:24:8C:FA:A1:CE
      ltsp:
        SCREEN_03: ssh-adm      
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.52.124
      hardware: ethernet 50:B3:63:02:99:A5
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.52.125
      hardware: ethernet E0:69:95:3B:4C:81
      ltsp:
        UNIREDE_LP_MAT: ws001
    Relogio-ponto:
      fixed_address: 172.17.52.210
      hardware: ethernet FC:52:CE:80:82:F6
    P2K-PDV-0052-031:
      fixed_address: 172.17.52.131
      hardware: ethernet 00:1C:C0:C4:01:67
    P2K-PDV-0052-033:
      fixed_address: 172.17.52.133
      hardware: ethernet 00:22:15:C1:23:C6
    P2K-PDV-0052-034:
      fixed_address: 172.17.52.134
      hardware: ethernet 70:71:BC:4E:6F:A3
    P2K-PDV-0052-035:
      fixed_address: 172.17.52.135
      hardware: ethernet BC:AE:C5:9B:FA:11
    P2K-PDV-0052-037:
      fixed_address: 172.17.52.137
      hardware: ethernet 90:E6:BA:9B:4F:0B
    scanner-crediario:
      fixed_address: 172.17.52.240
      hardware: ethernet 30:05:5C:AC:33:FB
    NB-CALL-AUD-6:
      fixed_address: 172.17.52.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.52.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.52.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.52.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.52.229
      hardware: ethernet F4:30:B9:A8:B7:ED
admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    NFCE yes
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN SIM
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work5: |
    CLIEN B4
    ESTAB 52
    CAIXA 5
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work9: |
    CLIEN B4
    ESTAB 52
    CAIXA 9
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 52
    CAIXA 10
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work11: |
    CLIEN B4
    ESTAB 52
    CAIXA 11
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
    ESTAB 52
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 52
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 52
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 52
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 52
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 52
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 52
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO
    PAGAMENTO NAO

cdlspc: 052 15 LEBES001 44640 00000 RS0017559300015

zabbix-proxy:
  psk: a86088bacf48804886b86931074e4383cc125562086fc6785a6022e8ca6fba6e