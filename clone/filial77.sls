filial: 77
dhcpd:
  subnets:
    172.17.77.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.77.1
      broadcast_address: 172.17.77.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.77.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws002:
      fixed_address: 172.17.77.102
      hardware: ethernet 00:0F:EA:D6:5A:E9
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws009:
      fixed_address: 172.17.77.109
      hardware: ethernet 1C:69:7C:8C:DC:61
      ltsp:
        SCREEN_02: ssh-adm        
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws010:
      fixed_address: 172.17.77.110
      hardware: ethernet 1C:69:77:8C:DC:62
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
    ws011:
      fixed_address: 172.17.77.111
      hardware: ethernet 1C:69:7A:8C:DC:66
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
      fixed_address: 172.17.77.120
      hardware: ethernet 94:DE:80:F0:F0:08
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.77.121
      hardware: ethernet 74:27:EA:72:C8:FC
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.77.125
      hardware: ethernet 00:1F:C6:9D:A9:EA
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.77.123
      hardware: ethernet FC:AA:14:F8:9C:4F
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv024:
      fixed_address: 172.17.77.124
      hardware: ethernet 00:0F:EA:D1:AE:A3
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0077-031:
      fixed_address: 172.17.77.131
      hardware: ethernet E0:69:95:56:B0:E2
    P2K-PDV-0077-032:
      fixed_address: 172.17.77.132
      hardware: ethernet 20:25:64:37:1D:34
    P2K-PDV-0077-033:
      fixed_address: 172.17.77.133
      hardware: ethernet F4:4D:30:83:C0:FA
    P2K-PDV-0077-034:
      fixed_address: 172.17.77.134
      hardware: ethernet 20:25:64:37:1D:B5
    scanner-crediario:
      fixed_address: 172.17.77.240
      hardware: ethernet 30:05:5C:CF:FC:FE

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE YES
    LIBERALIMITETOKEN SIM
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 77
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
    ESTAB 77
    CAIXA 98
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work2: |
    CLIEN B4
    ESTAB 77
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work9: |
    CLIEN B4
    ESTAB 77
    CAIXA 9
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 77
    CAIXA 10
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work11: |
    CLIEN B4
    ESTAB 77
    CAIXA 11
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 77
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 77
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 77
    CAIXA 25
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 77
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 77
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 77
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 077 70 LEBES001 44640 00000 RS0017870400070

zabbix-proxy:
  psk: 8c58f444852717e7734bfb079a2d7efd6eca871a35be3e1d6af69142b7ee253f