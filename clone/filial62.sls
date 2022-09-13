filial: 62
dhcpd:
  subnets:
    172.17.62.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.62.1
      broadcast_address: 172.17.62.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.62.254
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
      fixed_address: 172.17.62.101
      hardware: ethernet 00:0F:EA:25:4C:84
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws002:
      fixed_address: 172.17.62.102
      hardware: ethernet 00:0F:EA:D6:66:E9
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR   
    ws003:
      fixed_address: 172.17.62.103
      hardware: ethernet 00:24:8C:FA:B0:93
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws003
        UNIREDE_LP_TER: ws003
    pv020:
      fixed_address: 172.17.62.120
      hardware: ethernet 00:0F:EA:D1:BD:3C
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    pv021:
      fixed_address: 172.17.62.121
      hardware: ethernet 00:0F:EA:D7:55:93
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.62.122
      hardware: ethernet 94:DE:80:F1:DE:99
      ltsp:
        SCREEN_04: ldm
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.62.123
      hardware: ethernet 00:0F:EA:D1:9B:4A
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    pv024:
      fixed_address: 172.17.62.124
      hardware: ethernet 00:0F:EA:D6:A7:AA
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    pv025:
      fixed_address: 172.17.62.125
      hardware: ethernet 00:1B:B9:CB:1C:44
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    P2K-PDV-0062-031:
      fixed_address: 172.17.62.131
      hardware: ethernet 00:1F:C6:9D:B2:CF
    P2K-PDV-0062-032:
      fixed_address: 172.17.62.132
      hardware: ethernet E0:69:95:3B:44:A1
    P2K-PDV-0062-033:
      fixed_address: 172.17.62.133
      hardware: ethernet 00:1F:C6:9D:AD:92
    scanner-crediario:
      fixed_address: 172.17.62.240
      hardware: ethernet 3C:2A:F4:21:C2:40
    NB-CALL-AUD-6:
      fixed_address: 172.17.62.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.62.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.62.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.62.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.62.229
      hardware: ethernet F4:30:B9:A8:B7:ED

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work1: |
    CLIEN B4
    ESTAB 62
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
    ESTAB 62
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work3: |
    CLIEN B4
    ESTAB 62
    CAIXA 3
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
    ESTAB 62
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 62
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 62
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 62
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 62
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 62
    CAIXA 25
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 62
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO
    PAGAMENTO NAO

cdlspc: 062 40 LEBES001 44640 00000 RS0017629300040

zabbix-proxy:
  psk: ca3e99b75b989d39a9886478781376697c769206d176a2f9705b74e729465c31