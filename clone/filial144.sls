filial: 144
dhcpd:
  subnets:
    172.17.144.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.144.1
      broadcast_address: 172.17.144.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.144.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    p2K-pdv-144-031:
      fixed_address: 172.17.144.131
      hardware: ethernet 10:88:0F:00:87:25
    p2K-pdv-144-032:
      fixed_address: 172.17.144.132
      hardware: ethernet 10:88:0F:00:87:47
    p2K-pdv-144-033:
      fixed_address: 172.17.144.133
      hardware: ethernet 10:88:0F:00:87:36
    p2K-pdv-144-034:
      fixed_address: 172.17.144.134
      hardware: ethernet 10:88:0F:00:87:28
    p2K-pdv-144-035:
      fixed_address: 172.17.144.135
      hardware: ethernet 10:88:0F:00:87:27
    ws008:
      fixed_address: 172.17.144.108
      hardware: ethernet 00:0F:EA:DA:30:D0
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws008
        UNIREDE_LP_TER: ws008
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws009:
      fixed_address: 172.17.144.109
      hardware: ethernet 74:27:EA:72:C9:0A
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.144.120
      hardware: ethernet 70:5A:0F:69:17:C8
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.144.121
      hardware: ethernet 74:27:EA:72:C9:20
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.144.122
      hardware: ethernet 00:0F:EA:D7:55:83
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.144.123
      hardware: ethernet 70:5A:0F:69:F6:F0
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.144.124
      hardware: ethernet 00:0F:EA:AA:46:6D
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.144.125
      hardware: ethernet 00:24:21:FE:18:76
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.17.144.126
      hardware: ethernet 38:60:77:6A:11:37
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    Telefonia:
      fixed_address: 172.17.144.200
      hardware: ethernet 80:EE:73:C3:AB:FF
    Catalogo:
      fixed_address: 172.17.144.223
      hardware: ethernet 48:4D:7E:A1:F7:D1
    relogio-ponto1:
      fixed_address: 172.17.144.210
      hardware: ethernet FC:52:CE:80:78:85
    relogio-ponto2:
      fixed_address: 172.17.144.211
      hardware: ethernet FC:52:CE:80:83:D6
    scanner-crediario:
      fixed_address: 172.17.144.240
      hardware: ethernet 30:05:5C:CF:FD:03
    NB-CALL-AUD-6:
      fixed_address: 172.17.144.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.144.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.144.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.144.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.144.229
      hardware: ethernet F4:30:B9:A8:B7:ED      

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
    FEIRAO-NOME-LIMPO SIM
    USATROCAFONE NAO
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 144
    CAIXA 99
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work8: |
    CLIEN B4
    ESTAB 144
    CAIXA 8
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work9: |
    CLIEN B4
    ESTAB 144
    CAIXA 9
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 144
    CAIXA 20
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work21: |
    CLIEN B4
    ESTAB 144
    CAIXA 21
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work22: |
    CLIEN B4
    ESTAB 144
    CAIXA 22
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work23: |
    CLIEN B4
    ESTAB 144
    CAIXA 23
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work24: |
    CLIEN B4
    ESTAB 144
    CAIXA 24
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work25: |
    CLIEN B4
    ESTAB 144
    CAIXA 25
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work26: |
    CLIEN B4
    ESTAB 144
    CAIXA 26
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work: |
    CLIEN B4
    ESTAB 144
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p

cdlspc: 144 167 LEBES001 44640 00000 RS0019424000167

zabbix-proxy:
  psk: 195b9ecf9a28da7db5f22d140d743ef43b0f4831ae4b1cc8648b50ca9ec56e71