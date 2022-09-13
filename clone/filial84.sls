filial: 84
dhcpd:
  subnets:
    172.17.84.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.84.1
      broadcast_address: 172.17.84.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.84.254
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
      fixed_address: 172.17.84.104
      hardware: ethernet 94:C6:91:C1:87:A1
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws004
        UNIREDE_LP_TER: ws004
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws006:
      fixed_address: 172.17.84.106
      hardware: ethernet 00:0F:EA:D1:F3:C6
      ltsp:
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws004
        UNIREDE_LP_TER: ws004
        SCREEN_02: ssh-adm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.84.120
      hardware: ethernet F4:4D:30:83:C0:FA
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.84.121
      hardware: ethernet 90:E6:BA:9B:C3:CB
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    pv022:
      fixed_address: 172.17.84.122
      hardware: ethernet 00:1F:C6:FF:78:DC
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.84.123
      hardware: ethernet F4:4D:30:83:F3:B2
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    P2K-PDV-0084-031:
      fixed_address: 172.17.84.131
      hardware: ethernet 00:1F:C6:9D:BC:FE
    P2K-PDV-0084-032:
      fixed_address: 172.17.84.132
      hardware: ethernet 10:88:0F:00:87:48
    P2K-PDV-0084-033:
      fixed_address: 172.17.84.133
      hardware: ethernet 70:71:BC:4E:6D:9D
    scanner-crediario:
      fixed_address: 172.17.84.240
      hardware: ethernet 30:05:5C:AC:56:77

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    NFCE YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE-CONTIGENCIA NAO
    LIBERALIMITETOKEN SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work4: |
    CLIEN B4
    ESTAB 84
    CAIXA 4
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work6: |
    CLIEN B4
    ESTAB 84
    CAIXA 6
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 84
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 84
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 84
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 84
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 84
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    NFE-VERSAO 310
    VENDA NAO

cdlspc: 084 84 LEBES001 44640 00000 RS0017929500084

zabbix-proxy:
  psk: 2b47c338350dd4313fdc64fc7b1c97e00594f098578d0b9398318325096ed684