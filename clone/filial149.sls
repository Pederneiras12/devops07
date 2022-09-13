filial: 149
dhcpd:
  subnets:
    172.20.149.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.20.149.1
      broadcast_address: 172.20.149.255
      subnet-mask: 255.255.255.0
      next_server: 172.20.149.254
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
      fixed_address: 172.20.149.101
      hardware: ethernet 1C:69:7A:83:89:4F
      ltsp:
        SCREEN_02: ssh-adm 
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws002:
      fixed_address: 172.20.149.102
      hardware: ethernet 00:00:00:00:00:00
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.20.149.120
      hardware: ethernet 1C:69:7A:83:82:D0
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.20.149.121
      hardware: ethernet 1C:69:7A:83:74:5A
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.20.149.122
      hardware: ethernet 1C:69:7A:83:86:C3
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.20.149.123
      hardware: ethernet 1C:69:7A:83:6E:78
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.20.149.124
      hardware: ethernet 1C:69:7A:83:75:C3
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.20.149.125
      hardware: ethernet 1C:69:7A:83:86:D8
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.20.149.126
      hardware: ethernet 00:00:00:00:00:02
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0149-031:
      fixed_address: 172.20.149.131
      hardware: ethernet 38:60:77:5C:81:17
    P2K-PDV-0149-032:
      fixed_address: 172.20.149.132
      hardware: ethernet 20:25:64:37:16:18
    P2K-PDV-0149-033:
      fixed_address: 172.20.149.133
      hardware: ethernet E0:69:95:3B:49:36
    P2K-PDV-0149-034:
      fixed_address: 172.20.149.134
      hardware: ethernet 20:25:64:37:18:5A
    P2K-PDV-0149-035:
      fixed_address: 172.20.149.135
      hardware: ethernet E0:69:95:20:FB:EA
    P2K-PDV-0149-036:
      fixed_address: 172.20.149.136
      hardware: ethernet 20:25:64:37:3A:CF
    P2K-PDV-0149-037:
      fixed_address: 172.20.149.137
      hardware: ethernet 20:25:64:37:3A:00
    P2K-PDV-0149-038:
      fixed_address: 172.20.149.138
      hardware: ethernet 20:25:64:37:3A:00
    scanner-crediario:
      fixed_address: 172.20.149.240
      hardware: ethernet 3C:2A:F4:04:08:90
    relogio-ponto:
      fixed_address: 172.20.149.210
      hardware: ethernet FC:52:CE:80:82:2F

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS YES
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 149
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
    ESTAB 149
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work2: |
    CLIEN B4
    ESTAB 149
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 149
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 149
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 149
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 149
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 149
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 149
    CAIXA 25
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 149
    CAIXA 26
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 149
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 0149 039 LEBES001 44640 00000 RS0017629200039

zabbix-proxy:
  psk: 175655cc87a61b0b5c36651070e078a1635cc299758a98dccfdcc0ef66abc3a7