filial: 08
dhcpd:
  subnets:
    172.17.8.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.8.1
      broadcast_address: 172.17.08.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.8.254
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
      fixed_address: 172.17.8.101
      hardware: ethernet 00:0F:EA:D6:64:67
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws002:
      fixed_address: 172.17.8.102
      hardware: ethernet 00:1F:C6:FF:56:A5   
      ltsp:
        SCREEN_02: ssh-adm
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
    ws003:
      fixed_address: 172.17.8.103
      hardware: ethernet FC:AA:14:F6:8E:26   
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR    
    ws012:
      fixed_address: 172.17.8.112
      hardware: ethernet 00:1F:C6:FE:AD:C4
      ltsp:
        SCREEN_02: ssh-adm
        UNIREDE_LP_MAT: ws007
        UNIREDE_LP_TER: ws007
    ws014:
      fixed_address: 172.17.8.114
      hardware: ethernet 00:24:8C:FA:B0:E2
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
    ws015:
      fixed_address: 172.17.8.115
      hardware: ethernet 00:0F:EA:D6:7D:BC
      ltsp:
        SCREEN_02: ssh-adm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    pv020:
      fixed_address: 172.17.8.120
      hardware: ethernet 00:0F:EA:D7:2B:F8
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.8.121
      hardware: ethernet 00:0F:EA:AF:7F:C5
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.8.122
      hardware: ethernet 94:C6:91:4E:4E:EB
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.8.123
      hardware: ethernet FC:AA:14:F6:8E:66
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.8.124
      hardware: ethernet 00:0F:EA:D2:03:D7
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.8.125
      hardware: ethernet 00:0F:EA:D2:1F:4A
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.17.8.126
      hardware: ethernet 70:71:BC:4E:6C:EE
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    P2K-PDV-0008-031:
      fixed_address: 172.17.8.131
      hardware: ethernet 90:E6:BA:9B:51:49
    P2K-PDV-0008-032:
      fixed_address: 172.17.8.132
      hardware: ethernet 94:DE:80:F1:7D:80
    P2K-PDV-0008-033:
      fixed_address: 172.17.8.133
      hardware: ethernet 90:E6:BA:9B:4F:01
    P2K-PDV-0008-034:
      fixed_address: 172.17.8.134
      hardware: ethernet FC:AA:14:F6:77:70
    P2K-PDV-0008-035:
      fixed_address: 172.17.8.135
      hardware: ethernet 00:1F:C6:9D:A9:E9
    P2K-PDV-0008-036:
      fixed_address: 172.17.8.136
      hardware: ethernet FC:AA:14:F6:7A:53
    relogio-ponto:
      fixed_address: 172.17.8.212
      hardware: ethernet FC:52:CE:80:6E:F9
    scanner-crediario:
      fixed_address: 172.17.8.240
      hardware: ethernet 3C:2A:F4:04:0A:1E
    NB-CALL-AUD-6:
      fixed_address: 172.17.8.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.8.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.8.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.8.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.8.229
      hardware: ethernet F4:30:B9:A8:B7:ED      
      
admcom:
  work98: |
    CLIEN B4
    ESTAB 08
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
    VENDE-SEGURO SIM
    NFCE SIM
    LIBERALIMITETOKEN SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 8
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
    ESTAB 8
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
    ESTAB 8
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work12: |
    CLIEN B4
    ESTAB 8
    CAIXA 12
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work14: |
    CLIEN B4
    ESTAB 8
    CAIXA 14
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work15: |
    CLIEN B4
    ESTAB 8
    CAIXA 15
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 8
    CAIXA 20
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work21: |
    CLIEN B4
    ESTAB 8
    CAIXA 21
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work22: |
    CLIEN B4
    ESTAB 8
    CAIXA 22
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work23: |
    CLIEN B4
    ESTAB 8
    CAIXA 23
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
    COMECF NAO
  work24: |
    CLIEN B4
    ESTAB 8
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work25: |
    CLIEN B4
    ESTAB 8
    CAIXA 25
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work26: |
    CLIEN B4
    ESTAB 8
    CAIXA 26
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work: |
    CLIEN B4
    ESTAB 8
    CAIXA 29
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO
    

cdlspc: 008 071 LEBES001 44640 00000 RS0017870500071

zabbix-proxy:
  psk: a25730f1543d9a85c5fec8201b45136d2eb2bed1cdd5a934d607c927f324c892