filial: 10
dhcpd:
  subnets:
    172.17.10.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.10.1
      broadcast_address: 172.17.10.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.10.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws006:
      fixed_address: 172.17.10.106
      hardware: ethernet 74:27:EA:7A:4F:73
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws006
        UNIREDE_LP_TER: ws006
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.10.120
      hardware: ethernet 00:27:0E:12:7C:32
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.10.121
      hardware: ethernet 00:1F:C6:9D:AD:6C
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.10.122
      hardware: ethernet FC:AA:14:F6:78:76
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.10.123
      hardware: ethernet 00:0F:EA:D7:3F:CC
      ltsp:
        SCREEN_03: ssh-adm      
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.10.124
      hardware: ethernet 00:0F:EA:D7:6C:BD
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    scanner-crediario:
      fixed_address: 172.17.10.240
      hardware: ethernet 3C:2A:F4:21:C1:85
    P2K-PDV-0010-032:
      fixed_address: 172.17.10.132
      hardware: ethernet 00:1F:C6:FE:AA:DC
    P2K-PDV-0010-033:
      fixed_address: 172.17.10.133
      hardware: ethernet 94:DE:80:F0:4D:5B
    P2K-PDV-0010-034:
      fixed_address: 172.17.10.134
      hardware: ethernet 00:1F:C6:9D:B9:3E
admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA yes
    RECIBO-BARRAS yes
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work5: |
    CLIEN B4
    ESTAB 10
    CAIXA 5
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 10
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 10
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 10
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 10
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 10
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 010 138 LEBES001 44640 00000 RS0019241300138

zabbix-proxy:
  psk: f6eb14b36454ea35be1bf501633fa2a79aa0e69cd3dccf03de80d8f76eb5172a