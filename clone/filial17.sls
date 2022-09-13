filial: 17
dhcpd:
  subnets:
    172.17.17.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.17.1
      broadcast_address: 172.17.17.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.17.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws005:
      fixed_address: 172.17.17.105
      hardware: ethernet 00:0F:EA:D1:F2:7C
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws005
        UNIREDE_LP_TER: ws005
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.17.120
      hardware: ethernet 00:0F:EA:D1:FC:52
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.17.121
      hardware: ethernet 00:0F:EA:D6:F3:3B
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.17.122
      hardware: ethernet 00:0F:EA:23:27:36
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.17.123
      hardware: ethernet 20:CF:30:BD:0A:97
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.17.124
      hardware: ethernet 20:CF:30:BD:0A:8D
      ltsp:
        UNIREDE_LP_MAT: ws001
    scanner-crediario:
      fixed_address: 172.17.17.240
      hardware: ethernet 3C:2A:F4:21:C2:B6
    relogio-ponto:
      fixed_address: 172.17.17.210
      hardware: ethernet FC:52:CE:80:3A:0B
    P2K-PDV-0017-031:
      fixed_address: 172.17.17.131
      hardware: ethernet 74:27:EA:72:C8:93
    P2K-PDV-0017-032:
      fixed_address: 172.17.17.132
      hardware: ethernet 70:71:BC:4E:6B:D1
    P2K-PDV-0017-033:
      fixed_address: 172.17.17.133
      hardware: ethernet 70:71:BC:CB:BF:ED

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA  yes
    RECIBO-BARRAS yes
    ACAO-INDICA-AMIGOS NO
    LIBERALIMITETOKEN SIM
    VENDE-SEGURO SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work5: |
    CLIEN B4
    ESTAB 17
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
    ESTAB 17
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 17
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 17
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 17
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 17
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 017 110 LEBES001 44640 00000 RS0018105600110

zabbix-proxy:
  psk: 1e18ad03119f231a3d332845cfa9a32d1dc2fa181bd93c46d1e9858365aa8cc5