filial: 74
dhcpd:
  subnets:
    172.17.74.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.74.1
      broadcast_address: 172.17.74.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.74.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth1')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws001:
      fixed_address: 172.17.74.101
      hardware: ethernet F4:4D:30:8C:E9:46
      ltsp:
        SCREEN_04: ldm
        SCREEN_02: ssh-adm  
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.74.120
      hardware: ethernet 90:E6:BA:9B:51:D7
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.74.121
      hardware: ethernet 00:0F:EA:D1:55:7B
      ltsp:
        SCREEN_04: ldm
        SCREEN_03: ssh-adm 
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.74.122
      hardware: ethernet 94:DE:80:F0:EB:E6
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.74.123
      hardware: ethernet 00:1C:25:AD:BE:F9
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.74.124
      hardware: ethernet 74:27:EA:7A:4F:3D
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.74.125
      hardware: ethernet 20:CF:30:BD:0A:95
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0074-032:
      fixed_address: 172.17.74.132
      hardware: ethernet 20:25:64:37:1A:CF
    P2K-PDV-0074-033:
      fixed_address: 172.17.74.133
      hardware: ethernet E0:69:95:B9:3C:5F
    P2K-PDV-0074-034:
      fixed_address: 172.17.74.135
      hardware: ethernet 20:25:64:37:40:64
    P2K-PDV-0074-035:
      fixed_address: 172.17.74.135
      hardware: ethernet E0:69:95:3B:47:73
    P2K-PDV-0074-036:
      fixed_address: 172.17.74.136
      hardware: ethernet 20:25:64:37:18:E2
    scanner-crediario:
      fixed_address: 172.17.74.240
      hardware: ethernet 3C:2A:F4:04:08:3A
    relogio-ponto:
      fixed_address: 172.17.74.210
      hardware: ethernet FC:52:CE:80:83:37
    NB-CALL-AUD-6:
      fixed_address: 172.17.74.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.74.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.74.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.74.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.74.229
      hardware: ethernet F4:30:B9:A8:B7:ED      

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    LIBERALIMITETOKEN SIM
    VENDE-SEGURO SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work1: |
    CLIEN B4
    ESTAB 74
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 74
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    COMECF NAO
  work21: |
    CLIEN B4
    ESTAB 74
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    COMECF NAO
  work22: |
    CLIEN B4
    ESTAB 74
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    COMECF NAO
  work23: |
    CLIEN B4
    ESTAB 74
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    COMECF NAO
  work24: |
    CLIEN B4
    ESTAB 74
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    COMECF NAO
  work25: |
    CLIEN B4
    ESTAB 74
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    COMECF NAO
  work: |
    CLIEN B4
    ESTAB 74
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO
    PAGAMENTO NAO

cdlspc: 074 068 LEBES001 44640 00000 RS0017869200068

zabbix-proxy:
  psk: 903ec6f1da8b5460b523702561b0b68e2f2d504155c5e085e7dc176796691eca