filial: 16
dhcpd:
  subnets:
    172.17.16.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.16.1
      broadcast_address: 172.17.16.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.16.254
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
      fixed_address: 172.17.16.101
      hardware: ethernet 00:0F:EA:D6:B9:46
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.16.121
      hardware: ethernet EC:A8:6B:BA:6D:49
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.16.122
      hardware: ethernet 00:22:15:C1:25:61
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.16.123
      hardware: ethernet 00:0F:EA:D1:FC:A1
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv024:
      fixed_address: 172.17.16.124
      hardware: ethernet 00:1F:C6:9D:AB:0E
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.16.125
      hardware: ethernet EC:A8:6B:BA:6D:82
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.17.16.126
      hardware: ethernet 6C:F0:49:FF:03:51
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv029:
      fixed_address: 172.17.16.129
      hardware: ethernet 94:DE:80:F1:71:97
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    P2K-PDV-0016-031:
      fixed_address: 172.17.16.131
      hardware: ethernet 00:16:17:F3:50:6E
    P2K-PDV-0016-032:
      fixed_address: 172.17.16.132
      hardware: ethernet 00:1C:25:AD:02:A2
    P2K-PDV-0016-033:
      fixed_address: 172.17.16.133
      hardware: ethernet EC:A8:6B:BA:6D:6C
    P2K-PDV-0016-034:
      fixed_address: 172.17.16.134
      hardware: ethernet FC:AA:14:F6:74:AF
    P2K-PDV-0016-035:
      fixed_address: 172.17.16.135
      hardware: ethernet FC:AA:14:F6:75:71
    P2K-PDV-0016-036:
      fixed_address: 172.17.16.136
      hardware: ethernet 00:1C:C0:5C:DE:37
    Scanner-crediario:
      fixed_address: 172.17.16.240
      hardware: ethernet 30:05:5C:AC:15:FD
    relogio-ponto:
      fixed_address: 172.17.16.210
      hardware: ethernet FC:52:CE:80:70:49

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA  YES
    RECIBO-BARRAS YES
    NFCE YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 16
    CAIXA 50
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work1: |
    CLIEN B4
    ESTAB 16
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work7: |
    CLIEN B4
    ESTAB 16
    CAIXA 7
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work8: |
    CLIEN B4
    ESTAB 16
    CAIXA 8
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work26: |
    CLIEN B4
    ESTAB 16
    CAIXA 26
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 16
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 16
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 16
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 16
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 16
    CAIXA 25
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work29: |
    CLIEN B4
    ESTAB 16
    CAIXA 29
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 16
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 016 041 LEBES001 44640 00000 RS0017637900041

zabbix-proxy:
  psk: b2b7a94473ee30328803ac70de29827009419c6ee2939c25c31f45c68cf41e90