filial: 89
dhcpd:
  subnets:
    172.17.89.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.89.1
      broadcast_address: 172.17.89.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.89.254
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
      fixed_address: 172.17.89.101
      hardware: ethernet 00:0F:EA:D1:A1:25
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.89.120
      hardware: ethernet 00:0F:EA:21:56:82
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.89.121
      hardware: ethernet E0:69:95:56:B2:E0
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.89.122
      hardware: ethernet FC:AA:14:F6:76:4A
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.89.123
      hardware: ethernet 00:1F:C6:9D:B1:60
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.89.124
      hardware: ethernet 00:1F:C6:9D:B2:DA
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0089-031:
      fixed_address: 172.17.89.131
      hardware: ethernet 00:1C:25:4A:6D:13
    P2K-PDV-0089-032:
      fixed_address: 172.17.89.132
      hardware: ethernet 10:88:0F:00:87:49
    P2K-PDV-0089-033:
      fixed_address: 172.17.89.133
      hardware: ethernet 00:1C:C0:0C:E4:9D
    scanner-crediario:
      fixed_address: 172.17.89.240
      hardware: ethernet 30:05:5C:CF:FD:E7   

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE YES
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work1: |
    CLIEN B4
    ESTAB 89
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 89
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 89
    CAIXA 21
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 89
    CAIXA 22
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 89
    CAIXA 23
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 89
    CAIXA 24
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 89
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p

cdlspc: 089 92 LEBES001 44640 00000 RS0017962400092

zabbix-proxy:
  psk: 018fdcf3759f3b21ec4fca41218a1fcd509af83e11a7efd8da7a3c6ca23ac435