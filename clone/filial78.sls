filial: 78
dhcpd:
  subnets:
    172.17.78.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.78.1
      broadcast_address: 172.17.78.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.78.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws004:
      fixed_address: 172.17.78.104
      hardware: ethernet 00:0F:EA:D1:97:89
      ltsp:
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws003:
      fixed_address: 172.17.78.103
      hardware: ethernet 00:0F:EA:D6:DE:F2
      ltsp:
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv010:
      fixed_address: 172.17.78.110
      hardware: ethernet 00:0F:EA:D7:40:EF
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv011:
      fixed_address: 172.17.78.111
      hardware: ethernet 00:1F:C6:9D:A9:C3
      ltsp:
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv012:
      fixed_address: 172.17.78.112
      hardware: ethernet 50:B3:63:02:A5:57
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv018:
      fixed_address: 172.17.78.118
      hardware: ethernet FC:AA:14:F6:78:F9
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv014:
      fixed_address: 172.17.78.114
      hardware: ethernet 00:1F:D0:E8:64:B8
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv015:
      fixed_address: 172.17.78.115
      hardware: ethernet 70:71:BC:4E:6F:A3
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv016:
      fixed_address: 172.17.78.116
      hardware: ethernet 00:0F:EA:D1:E1:9E
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv017:
      fixed_address: 172.17.78.117
      hardware: ethernet 94:C6:91:48:55:C1
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0078-031:
      fixed_address: 172.17.78.131
      hardware: ethernet FC:AA:14:F6:74:CF
    P2K-PDV-0078-032:
      fixed_address: 172.17.78.132
      hardware: ethernet FC:AA:14:F6:8E:5F
    P2K-PDV-0078-033:
      fixed_address: 172.17.78.133
      hardware: ethernet FC:AA:14:F6:72:7F
    P2K-PDV-0078-034:
      fixed_address: 172.17.78.134
      hardware: ethernet FC:AA:14:F6:78:5C
    P2K-PDV-0078-035:
      fixed_address: 172.17.78.135
      hardware: ethernet FC:AA:14:FD:16:69
    scanner-crediario:
      fixed_address: 172.17.78.240
      hardware: ethernet 30:05:5C:AC:57:71
    relogio-ponto:
      fixed_address: 172.17.78.210
      hardware: ethernet FC:52:CE:80:82:CF

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA yes
    RECIBO-BARRAS yes
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE YES
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
    LIBERALIMITETOKEN SIM
  work99: |
    CLIEN b4
    ESTAB 78
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
    ESTAB 78
    CAIXA 98
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work4: |
    CLIEN b4
    ESTAB 78
    CAIXA 4
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work3: |
    CLIEN B4
    ESTAB 78
    CAIXA 3
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 78
    CAIXA 10
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work11: |
    CLIEN B4
    ESTAB 78
    CAIXA 11
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work12: |
    CLIEN B4
    ESTAB 78
    CAIXA 12
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work18: |
    CLIEN B4
    ESTAB 78
    CAIXA 18
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work14: |
    CLIEN B4
    ESTAB 78
    CAIXA 14
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work15: |
    CLIEN B4
    ESTAB 78
    CAIXA 15
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work16: |
    CLIEN B4
    ESTAB 78
    CAIXA 16
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work17: |
    CLIEN B4
    ESTAB 78
    CAIXA 17
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 78
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 078 073 LEBES001 44640 00000 RS0017880700073

zabbix-proxy:
  psk: 98bd1e5e02aab5037adb596e818b398bda221cfb458c62e2e6e57bb2bca9937c