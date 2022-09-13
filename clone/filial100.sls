filial: 100
dhcpd:
  subnets:
    172.17.100.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.100.1
      broadcast_address: 172.17.100.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.100.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws002:
      fixed_address: 172.17.100.102
      hardware: ethernet 00:0F:EA:AA:2E:30
      ltsp:
        SCREEN_04: ldm
        SCREEN_02: ssh-adm
        UNIREDE_LP_MAT: ws010
        UNIREDE_LP_TER: ws010
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws004:
      fixed_address: 172.17.100.104
      hardware: ethernet 00:24:8C:FA:A2:A2
      ltsp:
        SCREEN_02: ssh-adm
        UNIREDE_LP_MAT: ws004
        UNIREDE_LP_TER: ws004
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
    ws005:
      fixed_address: 172.17.100.105
      hardware: ethernet 00:0F:EA:D7:3F:CC
      ltsp:
        SCREEN_02: ssh-adm
        UNIREDE_LP_MAT: ws004
        UNIREDE_LP_TER: ws004
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws010:
      fixed_address: 172.17.100.110
      hardware: ethernet 00:0F:EA:D2:37:29
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        UNIREDE_LP_MAT: ws010
        UNIREDE_LP_TER: ws010
        PRINTER_0_PORT: 9100
    ws012:
      fixed_address: 172.17.100.112
      hardware: ethernet 00:0F:EA:D7:47:78
      ltsp:
        PRINTER_0_DEVICE: /dev/lp0
        SCREEN_02: ssh-adm
        UNIREDE_LP_MAT: ws010
        UNIREDE_LP_TER: ws010
        PRINTER_0_PORT: 9100
    ws017:
      fixed_address: 172.17.100.117
      hardware: ethernet 00:0F:EA:D1:F4:65
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws010
        UNIREDE_LP_TER: ws010
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.100.120
      hardware: ethernet 70:71:BC:4E:7E:89
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.100.122
      hardware: ethernet 94:DE:80:F4:4B:74
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm      
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.100.123
      hardware: ethernet 00:0F:EA:D6:DC:BB
      ltsp:
        SCREEN_03: ssh-adm      
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.100.124
      hardware: ethernet 00:0F:EA:D7:41:F0
      ltsp:
        SCREEN_04: ldm      
        SCREEN_03: ssh-adm      
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.100.125
      hardware: ethernet 00:0F:EA:D6:7C:26
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv028:
      fixed_address: 172.17.100.128
      hardware: ethernet FC:AA:14:F8:9D:52
      ltsp:
        SCREEN_04: ldm      
        SCREEN_03: ssh-adm      
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv029:
      fixed_address: 172.17.100.129
      hardware: ethernet 00:0F:EA:D6:BA:2E
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv030:
      fixed_address: 172.17.100.130
      hardware: ethernet 00:0F:EA:D2:03:37
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv040:
      fixed_address: 172.17.100.140
      hardware: ethernet 00:27:0E:2E:FF:80
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv041:
      fixed_address: 172.17.100.141
      hardware: ethernet 00:24:8C:FA:93:94
      ltsp:
        UNIREDE_LP_MAT: ws001
    p2k:
      fixed_address: 172.17.100.150
      hardware: ethernet FC:AA:14:F8:96:BC
    scanner-crediario:
      fixed_address: 172.17.100.240
      hardware: ethernet 30:05:5C:AC:0E:80  
    relogio-ponto:
      fixed_address: 172.17.100.210
      hardware: ethernet FC:52:CE:80:70:0A
    P2K-PDV-0100-031:
      fixed_address: 172.17.100.131
      hardware: ethernet F4:4D:30:83:F3:6F
    P2K-PDV-0100-032:
      fixed_address: 172.17.100.132
      hardware: ethernet F4:4D:30:83:C0:50
    P2K-PDV-0100-033:
      fixed_address: 172.17.100.133
      hardware: ethernet F4:4D:30:83:C0:48 
    P2K-PDV-0100-034:
      fixed_address: 172.17.100.134
      hardware: ethernet F4:4D:30:82:2A:BE
    P2K-PDV-0100-035:
      fixed_address: 172.17.100.135
      hardware: ethernet 20:25:64:37:1A:DC
    P2K-PDV-0100-037:
      fixed_address: 172.17.100.137
      hardware: ethernet 20:25:64:37:3A:CF
    P2K-PDV-0100-038:
      fixed_address: 172.17.100.138
      hardware: ethernet 20:25:64:83:E8:56

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN SIM
    NFCE YES
    NFCE-CONTIGENCIA NAO
    GOON SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN b4
    ESTAB 100
    CAIXA 99
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work2: |
    CLIEN b4
    ESTAB 100
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    ABRE-GAVETA SIM
    VENDA NAO
  work4: |
    CLIEN b4
    ESTAB 100
    CAIXA 4
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    ABRE-GAVETA SIM
    VENDA NAO
  work5: |
    CLIEN b4
    ESTAB 100
    CAIXA 5
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    ABRE-GAVETA SIM
    VENDA NAO
  work10: |
    CLIEN b4
    ESTAB 100
    CAIXA 10
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work12: |
    CLIEN b4
    ESTAB 100
    CAIXA 12
    RAMO  ?
    FISCAL 
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work17: |
    CLIEN b4
    ESTAB 100
    CAIXA 17
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    ABRE-GAVETA SIM
    VENDA NAO
  work20: |
    CLIEN b4
    ESTAB 100
    CAIXA 20
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work22: |
    CLIEN b4
    ESTAB 100
    CAIXA 22
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work23: |
    CLIEN b4
    ESTAB 100
    CAIXA 23
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work24: |
    CLIEN b4
    ESTAB 100
    CAIXA 24
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work25: |
    CLIEN b4
    ESTAB 100
    CAIXA 25
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work28: |
    CLIEN b4
    ESTAB 100
    CAIXA 28
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work29: |
    CLIEN b4
    ESTAB 100
    CAIXA 29
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work30: |
    CLIEN b4
    ESTAB 100
    CAIXA 30
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work40: |
    CLIEN b4
    ESTAB 100
    CAIXA 31
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work41: |
    CLIEN b4
    ESTAB 100
    CAIXA 41
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work: |
    CLIEN b4
    ESTAB 100
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO

cdlspc: 100 101 LEBES001 44640 00000 RS0010861900101

zabbix-proxy:
  psk: 816f8e3ec415d7847267dc48849283ead67496468f05084d265cdaf2d4bc9958