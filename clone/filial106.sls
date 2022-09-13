filial: 106
dhcpd:
  subnets:
    172.17.106.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.106.1
      broadcast_address: 172.17.106.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.106.254
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
      fixed_address: 172.17.106.101
      hardware: ethernet 00:0F:EA:D6:CF:E7
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    ws011:
      fixed_address: 172.17.106.111
      hardware: ethernet 00:0F:EA:D6:A7:A2
      ltsp:
        SCREEN_02: ssh-adm      
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.106.120
      hardware: ethernet 00:1F:C6:9D:C0:D6
      ltsp:
        SCREEN_03: ssh-adm
    pv021:
      fixed_address: 172.17.106.121
      hardware: ethernet 00:1F:C6:FF:76:DD
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.106.122
      hardware: ethernet 00:0F:EA:D7:3B:00
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.106.123
      hardware: ethernet 00:1F:C6:9D:A3:78
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.106.124
      hardware: ethernet 00:1F:C6:FF:55:72
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.106.125
      hardware: ethernet 50:B3:63:02:9F:B6
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
    scanner-crediario:
      fixed_address: 172.17.106.240
      hardware: ethernet 3C:2A:F4:21:A9:DE
    P2K-PDV-0106-031:
      fixed_address: 172.17.106.131
      hardware: ethernet 00:23:54:A2:89:3E
    P2K-PDV-0106-032:
      fixed_address: 172.17.106.132
      hardware: ethernet 00:1F:C6:9D:AE:BD
    P2K-PDV-0106-033:
      fixed_address: 172.17.106.133
      hardware: ethernet 74:27:EA:72:C9:04
    P2K-PDV-0106-034:
      fixed_address: 172.17.106.134
      hardware: ethernet 00:22:15:C1:23:F1
    P2K-PDV-0106-035:
      fixed_address: 172.17.106.135
      hardware: ethernet 00:1F:C6:9D:AA:5D
    
admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA yes
    RECIBO-BARRAS yes
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
  work1: |
    CLIEN B4
    ESTAB 106
    CAIXA 3
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work11: |
    CLIEN B4
    ESTAB 106
    CAIXA 11
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 106
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 106
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 106
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 106
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 106
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 106
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 106 114 LEBES001 44640 00000 RS0014464000114

zabbix-proxy:
  psk: b9f39bcd0a557e3d805978b4bb6cd15eba735cd14a79f813a081b80a1a88c475