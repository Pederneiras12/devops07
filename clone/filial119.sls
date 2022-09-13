filial: 119
dhcpd:
  subnets:
    172.17.119.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.119.1
      broadcast_address: 172.17.119.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.119.254
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
      fixed_address: 172.17.119.101
      hardware: ethernet 00:1F:C6:9D:A9:E8
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    ws004:
      fixed_address: 172.17.119.104
      hardware: ethernet 00:0F:EA:D1:E9:AA
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
    pv010:
      fixed_address: 172.17.119.110
      hardware: ethernet 20:CF:30:BD:0A:8C
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv011:
      fixed_address: 172.17.119.111
      hardware: ethernet 00:0F:EA:D6:91:5C
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv013:
      fixed_address: 172.17.119.113
      hardware: ethernet FC:AA:14:F6:7C:9D
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
    pv014:
      fixed_address: 172.17.119.114
      hardware: ethernet FC:AA:14:F8:98:92
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
    P2K-PDV-0119-031:
      fixed_address: 172.17.119.131
      hardware: ethernet 00:1F:C6:9D:A3:78
    P2K-PDV-0119-032:
      fixed_address: 172.17.119.132
      hardware: ethernet 10:88:0F:00:87:2A
    scanner-crediario:
      fixed_address: 172.17.119.240
      hardware: ethernet 30:05:5C:CF:FD:4F

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
    LIBERALIMITETOKEN SIM
  work99: |
    CLIEN B4
    ESTAB 119
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
    ESTAB 119
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work4: |
    CLIEN B4
    ESTAB 119
    CAIXA 4
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 119
    CAIXA 10
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work11: |
    CLIEN B4
    ESTAB 119
    CAIXA 11
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work13: |
    CLIEN B4
    ESTAB 119
    CAIXA 13
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work14: |
    CLIEN B4
    ESTAB 119
    CAIXA 14
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 119
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 119 126 LEBES001 44640 00000 RS0018200600126

zabbix-proxy:
  psk: b33ae30aa9691e6df1d7c83d50c23b033e2f44adb8a8d61d284d6d37e7da270e