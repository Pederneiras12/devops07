filial: 123
dhcpd:
  subnets:
    172.17.123.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.123.1
      broadcast_address: 172.17.123.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.123.254
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
      fixed_address: 172.17.123.101
      hardware: ethernet 38:60:77:26:BB:57
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    ws007:
      fixed_address: 172.17.123.107
      hardware: ethernet 00:0F:EA:AE:0F:E1
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
    pv021:
      fixed_address: 172.17.123.121
      hardware: ethernet E0:69:95:C4:47:59
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.123.122
      hardware: ethernet 70:71:BC:CB:90:DA
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.123.123
      hardware: ethernet 38:60:77:27:06:AF
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.123.124
      hardware: ethernet 00:0F:EA:D2:0A:2E
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
        SCREEN_03: ssh-adm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.123.125
      hardware: ethernet 40:16:7E:BB:54:70
      ltsp:
        UNIREDE_LP_MAT: ws001
    scanner-crediario:
      fixed_address: 172.17.123.240
      hardware: ethernet 3C:2A:F4:21:A9:F6
    P2K-PDV-0123-031:
      fixed_address: 172.17.123.131
      hardware: ethernet 38:60:77:5C:66:90
    P2K-PDV-0123-032:
      fixed_address: 172.17.123.132
      hardware: ethernet 00:E0:52:CF:B5:73

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    NFCE-CONTIGENCIA SIM
    NFCE YES
    LIBERALIMITETOKEN SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
    GOON SIM
  work1: |
    CLIEN B4
    ESTAB 123
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work7: |
    CLIEN B4
    ESTAB 123
    CAIXA 7
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work21: |
    CLIEN B4
    ESTAB 123
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 123
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 123
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 123
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 123
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 123 133 LEBES001 44640 00000 RS0018220000133

zabbix-proxy:
  psk: 8a3c52e724537336582dad2c7d1c80731fb78e1474af2785214e1717f121ec44
