filial: 45
dhcpd:
  subnets:
    172.17.45.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.45.1
      broadcast_address: 172.17.45.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.45.254
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
      fixed_address: 172.17.45.101
      hardware: ethernet 74:27:EA:7A:4F:48 
      ltsp:
        PRINTER_0_DEVICE: /dev/usb/lp0
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws006:
      fixed_address: 172.17.45.106
      hardware: ethernet FC:AA:14:F8:9C:C7
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/usb/lp0      
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws006
        UNIREDE_LP_TER: ws006
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv010:
      fixed_address: 172.17.45.110
      hardware: ethernet E0:69:95:3B:48:25
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv011:
      fixed_address: 172.17.45.111
      hardware: ethernet 00:0F:EA:D2:1E:BA
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv012:
      fixed_address: 172.17.45.112
      hardware: ethernet FC:AA:14:F6:76:E0  
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv013:
      fixed_address: 172.17.45.113
      hardware: ethernet F4:4D:30:8C:FA:C9   
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv014:
      fixed_address: 172.17.45.114
      hardware: ethernet 00:0F:EA:D7:30:CE
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv015:
      fixed_address: 172.17.45.115
      hardware: ethernet FC:AA:14:F8:97:8E  
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        X_SMART_COLOR_DEPTH: False
    pv016:
      fixed_address: 172.17.45.116
      hardware: ethernet 00:0F:EA:23:23:8F
      ltsp:
        UNIREDE_LP_MAT: ws001
    p2k:
      fixed_address: 172.17.45.150
      hardware: ethernet FC:AA:14:F8:96:BC
    scanner-crediario:
      fixed_address: 172.17.45.240
      hardware: ethernet 3C:2A:F4:04:0A:21
    P2K-PDV-0045-031:
      fixed_address: 172.17.45.131
      hardware: ethernet 00:24:8C:FA:B2:92
    P2K-PDV-0045-032:
      fixed_address: 172.17.45.132
      hardware: ethernet 90:E6:BA:09:40:6D
    P2K-PDV-0045-033:
      fixed_address: 172.17.45.133
      hardware: ethernet 90:2B:34:FC:EE:EB
    P2K-PDV-0045-034:
      fixed_address: 172.17.45.134
      hardware: ethernet 48:5B:39:BB:18:2F
    NB-CALL-AUD-6:
      fixed_address: 172.17.45.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.45.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.45.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.45.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.45.229
      hardware: ethernet F4:30:B9:A8:B7:ED
      

admcom:
  work98: |
    CLIEN B4
    ESTAB 45
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
    LIBERALIMITETOKEN SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 45
    CAIXA 99
    RAMO  ?
    FISCAL 
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work1: |
    CLIEN b4
    ESTAB 45
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    NFE-VERSAO 310
    VENDA NAO
  work6: |
    CLIEN b4
    ESTAB 45
    CAIXA 6
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    NFE-VERSAO 310
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 45
    CAIXA 10
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work11: |
    CLIEN B4
    ESTAB 45
    CAIXA 11
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work12: |
    CLIEN B4
    ESTAB 45
    CAIXA 12
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work13: |
    CLIEN B4
    ESTAB 45
    CAIXA 13
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310    
  work14: |
    CLIEN B4
    ESTAB 45
    CAIXA 14
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work15: |
    CLIEN B4
    ESTAB 45
    CAIXA 15
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work16: |
    CLIEN B4
    ESTAB 45
    CAIXA 16
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work: |
    CLIEN B4
    ESTAB 45
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    COMECF NAO
    VENDA NAO

cdlspc: 045 003 LEBES001 44640 00000 RS0017558100003

zabbix-proxy:
  psk: 4d8f95fe6a8e6893f713975ff7caa80368bf8504d4fadefbdd6cc8ae3f511375