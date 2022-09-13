filial: 07
dhcpd:
  subnets:
    172.17.7.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.7.1
      broadcast_address: 172.17.7.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.7.254
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
      fixed_address: 172.17.7.101
      hardware: ethernet 00:1F:C6:FF:56:A4
      ltsp:
        SCREEN_02: ssh-adm        
        SCREEN_04: ldm       
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9100
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws009:
      fixed_address: 172.17.7.109
      hardware: ethernet 00:0F:EA:D7:3A:5C
      ltsp:
        SCREEN_02: ssh-adm 
        SCREEN_04: ldm 
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    P2K-PDV-0007-031:
      fixed_address: 172.17.7.131
      hardware: ethernet 00:1F:C6:9D:BE:98
    P2K-PDV-0007-032:
      fixed_address: 172.17.7.132
      hardware: ethernet FC:AA:14:F8:9F:05
    P2K-PDV-0007-033:
      fixed_address: 172.17.7.133
      hardware: ethernet 70:71:BC:4E:71:8B
    P2K-PDV-0007-034:
      fixed_address: 172.17.7.134
      hardware: ethernet FC:AA:14:F6:77:DE
    P2K-PDV-0007-035:
      fixed_address: 172.17.7.135
      hardware: ethernet 00:1F:C6:9D:B2:23
    pv020:
      fixed_address: 172.17.7.120
      hardware: ethernet 00:0F:EA:D6:AD:AC
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.7.121
      hardware: ethernet  00:0F:EA:D7:04:3D
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.7.122
      hardware: ethernet F4:4D:30:8C:EA:11
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.7.123
      hardware: ethernet FC:AA:14:F8:9E:47
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.7.124
      hardware: ethernet 00:0F:EA:D1:D1:C4
      ltsp:
        SCREEN_04: ldm
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.7.125
      hardware: ethernet 00:0F:EA:D1:D2:98
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.17.7.126
      hardware: ethernet 00:1C:C0:C4:01:4B
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv027:
      fixed_address: 172.17.7.127
      hardware: ethernet FC:AA:14:F6:72:E5
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv028:
      fixed_address: 172.17.7.128
      hardware: ethernet FC:AA:14:F6:79:25
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv029:
      fixed_address: 172.17.7.129
      hardware: ethernet F4:4D:30:8C:E9:79
      ltsp:
        UNIREDE_LP_MAT: ws001
    p2k:
      fixed_address: 172.17.7.150
      hardware: ethernet FC:AA:14:F8:96:BC
    relogio-ponto:
      fixed_address: 172.17.7.210
      hardware: ethernet FC:52:CE:80:8D:B0
    scanner-crediario:
      fixed_address: 172.17.7.240
      hardware: ethernet 3C:2A:F4:21:C2:A6
    NB-CALL-AUD-6:
      fixed_address: 172.17.7.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.7.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.7.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.7.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.7.229
      hardware: ethernet F4:30:B9:A8:B7:ED      

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS
    NFCE YES
    VENDE-SEGURO SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 07
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
    ESTAB 07
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work9: |
    CLIEN B4
    ESTAB 07
    CAIXA 9
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 07
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PACOTE YES
    PREVENDA YES
  work21: |
    CLIEN B4
    ESTAB 07
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 07
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 07
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 07
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 07
    CAIXA 25
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 07
    CAIXA 26
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work27: |
    CLIEN B4
    ESTAB 07
    CAIXA 27
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work28: |
    CLIEN B4
    ESTAB 07
    CAIXA 28
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work29: |
    CLIEN B4
    ESTAB 07
    CAIXA 29
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 07
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p

cdlspc: 007 10 LEBES001 44640 00000 RS0017558800010

zabbix-proxy:
  psk: 79aaf4bcc6124602c06f853e1b440ed1a741ed760464758b3df804b2e1acf829