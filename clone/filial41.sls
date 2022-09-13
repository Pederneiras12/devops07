filial: 41
dhcpd:
  subnets:
    172.17.41.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.41.1
      broadcast_address: 172.17.41.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.41.254
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
      fixed_address: 172.17.41.101
      hardware: ethernet 94:C6:91:45:F0:B5
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws007:
      fixed_address: 172.17.41.107
      hardware: ethernet 94:C6:91:C5:2F:F1
      ltsp:
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv010:
      fixed_address: 172.17.41.110
      hardware: ethernet 00:0F:EA:D7:46:85
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
        UNIREDE_LP_MAT: ws005
    pv011:
      fixed_address: 172.17.41.111
      hardware: ethernet E0:69:95:56:B3:3A
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv012:
      fixed_address: 172.17.41.112
      hardware: ethernet 00:0F:EA:D1:DB:D6
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv013:
      fixed_address: 172.17.41.113
      hardware: ethernet 00:1F:C6:9D:A9:D2
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
    pv014:
      fixed_address: 172.17.41.114
      hardware: ethernet 00:0F:EA:23:2C:BC
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv015:
      fixed_address: 172.17.41.115
      hardware: ethernet 00:24:8C:FA:B1:59
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    p2k:
      fixed_address: 172.17.41.150
      hardware: ethernet FC:AA:14:F8:96:BC
    scanner-crediario:
      fixed_address: 172.17.41.240
      hardware: ethernet 3C:2A:F4:21:C2:A9
    P2K-PDV-0041-031:
      fixed_address: 172.17.41.131
      hardware: ethernet 00:1C:C0:D6:DB:A7
    P2K-PDV-0041-032:
      fixed_address: 172.17.41.132
      hardware: ethernet 00:24:8C:FA:AE:D0
    P2K-PDV-0041-033:
      fixed_address: 172.17.41.133
      hardware: ethernet 00:1F:C6:FF:78:6C
    P2K-PDV-0041-034:
      fixed_address: 172.17.41.134
      hardware: ethernet E0:69:95:56:AA:DD
    P2K-PDV-0041-035:
      fixed_address: 172.17.41.135
      hardware: ethernet FC:AA:14:F8:97:E4
    NB-CALL-AUD-6:
      fixed_address: 172.17.41.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.41.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.41.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.41.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.41.229
      hardware: ethernet F4:30:B9:A8:B7:ED      

admcom:
  work98: |
    CLIEN B4
    ESTAB 41
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
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE-CONTIGENCIA NAO
    LIBERALIMITETOKEN SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 41
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
    ESTAB 41
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS1
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    VENDA NAO 
  work7: |
    CLIEN B4
    ESTAB 41
    CAIXA 7
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 41
    CAIXA 10
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work11: |
    CLIEN B4
    ESTAB 41
    CAIXA 11
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work12: |
    CLIEN B4
    ESTAB 41
    CAIXA 12
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work13: |
    CLIEN B4
    ESTAB 41
    CAIXA 13
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work14: |
    CLIEN B4
    ESTAB 41
    CAIXA 14
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work15: |
    CLIEN B4
    ESTAB 41
    CAIXA 15
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES  
  work: |
    CLIEN B4
    ESTAB 41
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 041 18 LEBES001 44640 00000 RS0017559600018

zabbix-proxy:
  psk: f6833cba4517591e04882c0e4993ffc1519d80da02fbf41cebe025310c63504c