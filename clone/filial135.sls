filial: 135
dhcpd:
  subnets:
    172.17.135.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.135.1
      broadcast_address: 172.17.135.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.135.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    p2K-pdv-0135-032:
      fixed_address: 172.17.135.102
      hardware: ethernet 94:DE:80:F4:4B:7F
    p2K-pdv-0135-033:
      fixed_address: 172.17.135.103
      hardware: ethernet 94:DE:80:F0:50:A9
    p2K-pdv-0135-034:
      fixed_address: 172.17.135.104
      hardware: ethernet FC:AA:14:F6:75:D7
    p2K-pdv-0135-035:
      fixed_address: 172.17.135.105
      hardware: ethernet FC:AA:14:F6:75:E6
    p2K-pdv-0135-036:
      fixed_address: 172.17.135.106
      hardware: ethernet 00:27:0E:1C:86:B4
    p2K-av-0135-062:
      fixed_address: 172.17.135.162
      hardware: ethernet 00:00:00:00:00:5E
    p2K-av-0135-063:
      fixed_address: 172.17.135.163
      hardware: ethernet 00:00:00:00:00:60
    ap-wifi-01:
      fixed_address: 172.17.135.150
      hardware: ethernet 00:09:0F:95:A3:18
    ap-wifi-02:
      fixed_address: 172.17.135.151
      hardware: ethernet 00:09:0F:E7:9F:C4
    ap-wifi-03:
      fixed_address: 172.17.135.152
      hardware: ethernet E8:1C:BA:08:AC:68
    ws011:
      fixed_address: 172.17.135.111
      hardware: ethernet FC:AA:14:F6:73:43
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws011
        UNIREDE_LP_TER: ws011 
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws012:
      fixed_address: 172.17.135.112
      hardware: ethernet 94:DE:80:F1:7D:B2
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws012
        UNIREDE_LP_TER: ws012 
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.135.121
      hardware: ethernet 70:71:BC:36:C3:A6
      ltsp:
        UNIREDE_LP_MAT: ws002
    pv022:
      fixed_address: 172.17.135.122
      hardware: ethernet 50:B3:63:02:99:63
      ltsp:
        UNIREDE_LP_MAT: ws002
    pv023:
      fixed_address: 172.17.135.123
      hardware: ethernet 74:27:EA:72:C8:9A
      ltsp:
        UNIREDE_LP_MAT: ws002
    pv024:
      fixed_address: 172.17.135.124
      hardware: ethernet F4:4D:30:8C:FB:60
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws002
    pv025:
      fixed_address: 172.17.135.125
      hardware: ethernet 00:1F:C6:9D:B4:5E
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws002
    pv028:
      fixed_address: 172.17.135.128
      hardware: ethernet F4:4D:30:8C:EA:3C
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws002        
    pv027:
      fixed_address: 172.17.135.127
      hardware: ethernet 94:DE:80:F4:4B:73
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws002
    central-alarme:
      fixed_address: 172.17.135.10
      hardware: ethernet 00:19:BA:13:C0:8F
    scanner-crediario:
      fixed_address: 172.17.135.240
      hardware: ethernet 30:05:5C:CF:FD:97
    relogio-ponto:
      fixed_address: 172.17.135.211
      hardware: ethernet FC:52:CE:80:6F:CF
    DVR-01:
      fixed_address: 172.17.135.225
      hardware: ethernet 30:05:5C:CF:FD:00
    DVR-02:
      fixed_address: 172.17.135.226
      hardware: ethernet FC:52:CE:80:6F:01

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    RECIBO-BARRAS YES
    NUMERACAOAUTOMATICA YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE YES
    LIBERALIMITETOKEN SIM
    NFCE-CONTIGENCIA NAO
    GOON SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 135
    CAIXA 99
    RAMO  ?
    FISCAL 
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work98: |
    CLIEN B4
    ESTAB 135
    CAIXA 98
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work11: |
    CLIEN B4
    ESTAB 135
    CAIXA 11
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
    ESTAB 135
    CAIXA 12
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work21: |
    CLIEN B4
    ESTAB 135
    CAIXA 21
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work22: |
    CLIEN B4
    ESTAB 135
    CAIXA 22
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work23: |
    CLIEN B4
    ESTAB 135
    CAIXA 23
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work24: |
    CLIEN B4
    ESTAB 135
    CAIXA 24
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work25: |
    CLIEN B4
    ESTAB 135
    CAIXA 25
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work26: |
    CLIEN B4
    ESTAB 135
    CAIXA 26
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work27: |
    CLIEN B4
    ESTAB 135
    CAIXA 27
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310

cdlspc: 135 152 LEBES001 44640 00000 RS0011524100152

nfs:
  nfs_server: 172.17.135.254
  
P2K-POS:
  ip: 172.17.135.107
  num_loja: 0135
  pdv: 037
  gateway: 172.17.135.1
  rede: 172.17.255.0
  cnpj: 12345698901234
  estado: RS
  ip_sp: 172.17.135.254
  
zabbix-proxy:
  psk: 75111cb3f5e1c1b24d8e474afd392c5e66f158e46269ed53bb9007cf9847b701  