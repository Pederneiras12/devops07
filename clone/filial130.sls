filial: 130
dhcpd:
  subnets:
    172.17.130.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.130.1
      broadcast_address: 172.17.13.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.130.254
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
      fixed_address: 172.17.130.101
      hardware: ethernet 00:27:0E:16:3E:5F
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    ws009:
      fixed_address: 172.17.130.109
      hardware: ethernet 74:27:EA:7D:8E:2F
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws010:
      fixed_address: 172.17.130.110
      hardware: ethernet 74:27:EA:7A:4F:65
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    ws012:
      fixed_address: 172.17.130.112
      hardware: ethernet 94:C6:91:43:B8:D4
      ltsp:
        SCREEN_02: ssh-adm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    pv020:
      fixed_address: 172.17.130.120
      hardware: ethernet 74:27:EA:7A:4F:18
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.130.121
      hardware: ethernet 74:27:EA:7A:4F:1D
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.130.122
      hardware: ethernet 74:27:EA:7A:4F:81
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.130.123
      hardware: ethernet 74:27:EA:7A:4F:C6
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.130.124
      hardware: ethernet 74:27:EA:7A:54:1E
      ltsp:
        SCREEN_03: ssh-adm
    pv025:
      fixed_address: 172.17.130.125
      hardware: ethernet 94:DE:80:F2:7D:AA
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.17.130.126
      hardware: ethernet 74:27:EA:7A:4F:2D
      ltsp:
        SCREEN_04: ldm
        X_SMART_COLOR_DEPTH: False
    pv027:
      fixed_address: 172.17.130.127
      hardware: ethernet 94:DE:80:F2:7E:A6
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        X_SMART_COLOR_DEPTH: False
    pv028:
      fixed_address: 172.17.130.128
      hardware: ethernet 74:27:EA:7A:4F:36
      ltsp:
        SCREEN_04: ldm
        X_SMART_COLOR_DEPTH: False    
    p2k:
      fixed_address: 172.17.13.150
      hardware: ethernet FC:AA:14:F8:96:BC
    scanner-crediario:
      fixed_address: 172.17.130.240
      hardware: ethernet 30:05:5C:AC:59:10
    relogio-ponto:
      fixed_address: 172.17.130.210
      hardware: ethernet FC:52:CE:80:8D:7D
    P2K-PDV-0130-031:
      fixed_address: 172.17.130.131
      hardware: ethernet 74:27:EA:72:C8:FC
    P2K-PDV-0130-032:
      fixed_address: 172.17.130.132
      hardware: ethernet F4:4D:30:83:C0:45
    P2K-PDV-0130-033:
      fixed_address: 172.17.130.133
      hardware: ethernet F4:4D:30:83:C0:96
    P2K-PDV-0130-034:
      fixed_address: 172.17.130.134
      hardware: ethernet F4:4D:30:82:2A:89
    P2K-PDV-0130-035:
      fixed_address: 172.17.130.135
      hardware: ethernet 74:27:EA:7A:4F:17
    NB-CALL-AUD-6:
      fixed_address: 172.17.130.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.130.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.130.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.130.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.130.229
      hardware: ethernet F4:30:B9:A8:B7:ED      

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA yes
    RECIBO-BARRAS yes
    NFCE yes
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN SIM
    GOON SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 130
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
    ESTAB 130
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    ABRE-GAVETA SIM
    VENDA NAO
  work9: |
    CLIEN b4
    ESTAB 130
    CAIXA 9
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 130
    CAIXA 10
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work11: |
    CLIEN B4
    ESTAB 130
    CAIXA 11
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work12: |
    CLIEN B4
    ESTAB 130
    CAIXA 12
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 130
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work21: |
    CLIEN B4
    ESTAB 130
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work22: |
    CLIEN B4
    ESTAB 130
    CAIXA 22
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work23: |
    CLIEN B4
    ESTAB 130
    CAIXA 23
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work24: |
    CLIEN B4
    ESTAB 130
    CAIXA 24
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work25: |
    CLIEN B4
    ESTAB 130
    CAIXA 25
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work26: |
    CLIEN B4
    ESTAB 130
    CAIXA 26
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work27: |
    CLIEN B4
    ESTAB 130
    CAIXA 27
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work28: |
    CLIEN B4
    ESTAB 130
    CAIXA 28
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310        
  work: |
    CLIEN B4
    ESTAB 130
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p

cdlspc: 130 147 LEBES001 44640 00000 RS0011379100147

zabbix-proxy:
  psk: 9b150e9b2b0064f1169ea317254c8f18ead057b728808208d8510a3847768bd6