filial: 43
dhcpd:
  subnets:
    172.23.43.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.23.43.1
      broadcast_address: 172.23.43.255
      subnet-mask: 255.255.255.0
      next_server: 172.23.43.254
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
      fixed_address: 172.23.43.101
      hardware: ethernet 94:C6:91:48:69:EC
      ltsp:
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9100
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    pv020:
      fixed_address: 172.23.43.120
      hardware: ethernet 94:C6:91:48:6C:D5
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.23.43.121
      hardware: ethernet 00:1F:C6:9D:AD:6D
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.23.43.122
      hardware: ethernet E0:69:95:3B:4D:4F
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.23.43.123
      hardware: ethernet E0:69:95:56:AF:1E
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.23.43.124
      hardware: ethernet 00:1F:C6:9D:C4:AD
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0043-031:
      fixed_address: 172.23.43.131
      hardware: ethernet 00:1F:C6:FF:74:E1
    P2K-PDV-0043-032:
      fixed_address: 172.23.43.132
      hardware: ethernet 20:25:64:37:20:06
    P2K-PDV-0043-033:
      fixed_address: 172.23.43.133
      hardware: ethernet 38:60:77:26:BD:DD
    P2K-PDV-0043-034:
      fixed_address: 172.23.43.134
      hardware: ethernet 20:25:64:37:3A:48
    scanner-crediario:
      fixed_address: 172.23.43.240
      hardware: ethernet 30:05:5C:E0:BA:24
    relogio-ponto:
      fixed_address: 172.23.43.210
      hardware: ethernet FC:52:CE:80:82:F8

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    RECIBO-BARRAS YES
    NUMERACAOAUTOMATICA YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
    LIBERALIMITETOKEN SIM
  work1: |
    CLIEN B4
    ESTAB 43
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work99: |
    CLIEN B4
    ESTAB 43
    CAIXA 99
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work98: |
    CLIEN B4
    ESTAB 43
    CAIXA 98
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work20: |
    CLIEN B4
    ESTAB 43
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 43
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 43
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 43
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 43
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 43
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO

cdlspc: 043 08 LEBES001 44640 00000 RS0017558600008

zabbix-proxy:
  psk: 0401587ab53b6448ab6df28342f9ff7b86f9dc86d0f546788e42095cc36fe15d