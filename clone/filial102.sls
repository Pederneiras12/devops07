filial: 102
dhcpd:
  subnets:
    172.17.102.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.102.1
      broadcast_address: 172.17.102.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.102.254
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
      fixed_address: 172.17.102.101
      hardware: ethernet 00:0F:EA:D1:FB:77
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
    ws007:
      fixed_address: 172.17.102.107
      hardware: ethernet 00:0F:EA:D1:D1:05
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
    pv020:
      fixed_address: 172.17.102.120
      hardware: ethernet 74:27:EA:72:CC:5B
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.102.121
      hardware: ethernet 00:0F:EA:D2:37:25
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.102.122
      hardware: ethernet 90:E6:BA:09:41:47
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.102.123
      hardware: ethernet FC:AA:14:F6:74:B9
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv024:
      fixed_address: 172.17.102.124
      hardware: ethernet 90:E6:BA:09:3F:AF
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0102-031:
      fixed_address: 172.17.102.131
      hardware: ethernet 00:24:8C:FA:AD:38
    P2K-PDV-0102-032:
      fixed_address: 172.17.102.132
      hardware: ethernet E0:69:95:9B:5C:F0
    P2K-PDV-0102-033:
      fixed_address: 172.17.102.134
      hardware: ethernet 20:25:64:37:38:78
    P2K-PDV-0102-034:
      fixed_address: 172.17.102.134
      hardware: ethernet 00:1F:C6:9D:BB:20
    scanner-crediario:
      fixed_address: 172.17.102.240
      hardware: ethernet 30:05:5C:CF:FD:A1      
    relogio-ponto:
      fixed_address: 172.17.102.210
      hardware: ethernet FC:52:CE:80:6E:3E
    NB-CALL-AUD-6:
      fixed_address: 172.17.102.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.102.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.102.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.102.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.102.229
      hardware: ethernet F4:30:B9:A8:B7:ED      

admcom:
  work98: |
    CLIEN B4
    ESTAB 102
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
    ACAO-INDICA-AMIGOS NO
    LIBERALIMITETOKEN SIM
    VENDE-SEGURO SIM
    NFCE YES
    NFCE-CONTIGENCIA SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work1: |
    CLIEN B4
    ESTAB 102
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work7: |
    CLIEN B4
    ESTAB 102
    CAIXA 7
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 102
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 102
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 102
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 102
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 102
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 102
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO
    PAGAMENTO NAO

cdlspc: 102 106 LEBES001 44640 00000 RS0017999000106

zabbix-proxy:
  psk: 11fa4f4481c9c7b32de65caed27c56776460f08619c336b8b3427e204e6ba247