filial: 50
dhcpd:
  subnets:
    172.17.50.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.50.1
      broadcast_address: 172.17.50.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.50.254
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
      fixed_address: 172.17.50.101
      hardware: ethernet 00:0F:EA:D6:90:A4
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
    ws005:
      fixed_address: 172.17.50.105
      hardware: ethernet F4:4D:30:8C:FA:16
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
      fixed_address: 172.17.50.120
      hardware: ethernet  00:0F:EA:D6:64:55
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.50.121
      hardware: ethernet 00:0F:EA:D6:66:C6
      ltsp:
        SCREEN_04: ldm
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.50.122
      hardware: ethernet E0:69:95:3B:44:9F
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.50.123
      hardware: ethernet 00:0F:EA:D7:47:78
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.50.124
      hardware: ethernet 00:0F:EA:D1:F2:99
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.50.125
      hardware: ethernet 00:0F:EA:D2:30:37
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    scanner-crediario:
      fixed_address: 172.17.50.240
      hardware: ethernet 30:05:5C:AC:58:CE
    P2K-PDV-0050-032:
      fixed_address: 172.17.50.132
      hardware: ethernet 94:DE:80:F0:50:A0
    P2K-PDV-0050-033:
      fixed_address: 172.17.50.133
      hardware: ethernet 70:71:BC:4E:36:4B
    P2K-PDV-0050-034:
      fixed_address: 172.17.50.134
      hardware: ethernet 10:88:0F:00:87:31
    relogio-ponto:
      fixed_address: 172.17.50.210
      hardware: ethernet FC:52:CE:80:6F:A0

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work1: |
    CLIEN B4
    ESTAB 50
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work5: |
    CLIEN B4
    ESTAB 50
    CAIXA 5
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 50
    CAIXA 20
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 50
    CAIXA 21
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 50
    CAIXA 22
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 50
    CAIXA 23
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 50
    CAIXA 23
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 50
    CAIXA 25
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 50
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO
    PAGAMENTO NAO

cdlspc: 050 79 LEBES001 44640 00000 RS0017887900079

nfs:
  nfs_server: 172.17.50.254
  
P2K-POS:
  ip: 172.17.50.131
  num_loja: 0050
  pdv: 031
  gateway: 172.17.50.1
  rede: 172.17.50.0
  cnpj: 96662168007144
  estado: RS
  ip_sp: 172.17.50.254
  
zabbix-proxy:
  psk: d411bf4167d98fb1c5062ce4a156a4bff285cf9af6312bee19a216c64ff26cc6  