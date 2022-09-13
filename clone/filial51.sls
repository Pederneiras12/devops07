filial: 51
dhcpd:
  subnets:
    172.17.51.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.51.1
      broadcast_address: 172.17.51.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.51.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws008:
      fixed_address: 172.17.51.108
      hardware: ethernet 74:27:EA:7A:4E:E9
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR    
    pv020:
      fixed_address: 172.17.51.120
      hardware: ethernet 50:B3:63:02:91:9C
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.51.121
      hardware: ethernet 00:0F:EA:D2:1B:42
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.51.122
      hardware: ethernet E0:69:95:D6:42:1E
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.51.123
      hardware: ethernet 00:1C:C0:54:B4:D2
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.51.124
      hardware: ethernet 50:B3:63:02:97:1D
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.51.125
      hardware: ethernet 00:0F:EA:D6:5A:E3
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.17.51.126
      hardware: ethernet 00:1F:C6:9D:AD:7D
      ltsp:
        SCREEN_04: ldm
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv027:
      fixed_address: 172.17.51.127
      hardware: ethernet 00:0F:EA:AA:1A:38
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv028:
      fixed_address: 172.17.51.128
      hardware: ethernet F4:4D:30:83:C0:45
      ltsp:
        UNIREDE_LP_MAT: ws001    
    scanner-crediario:
      fixed_address: 172.17.51.240
      hardware: ethernet 3C:2A:F4:21:C2:41
    cofre:
      fixed_address: 172.17.51.220
      hardware: ethernet F4:4D:30:83:C2:FD
    P2K-PDV-0051-031:
      fixed_address: 172.17.51.131
      hardware: ethernet 00:1F:C6:9D:A4:C4
    P2K-PDV-0051-032:
      fixed_address: 172.17.51.132
      hardware: ethernet 00:1B:B9:9F:76:B7
    P2K-PDV-0051-033:
      fixed_address: 172.17.51.133
      hardware: ethernet 00:24:8C:FA:C1:51
    P2K-PDV-0051-034:
      fixed_address: 172.17.51.134
      hardware: ethernet 00:21:97:C9:27:03
    P2K-PDV-0051-035:
      fixed_address: 172.17.51.135
      hardware: ethernet 00:24:8C:FA:AD:ED
    P2K-PDV-0051-036:
      fixed_address: 172.17.51.136
      hardware: ethernet 00:1F:C6:9D:AA:76
    P2K-PDV-0051-037:
      fixed_address: 172.17.51.137
      hardware: ethernet 00:24:8C:FA:BD:4B
admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
    NFCE-CONTIGENCIA NAO
  work1: |
    CLIEN B4
    ESTAB 51
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work8: |
    CLIEN B4
    ESTAB 51
    CAIXA 8
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 51
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 51
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 51
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 51
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 51
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 51
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 51
    CAIXA 26
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work27: |
    CLIEN B4
    ESTAB 51
    CAIXA 27
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work28: |
    CLIEN B4
    ESTAB 51
    CAIXA 28
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 051 011 LEBES001 44640 00000 RS0017558900011

zabbix-proxy:
  psk: 594b5467535470c482829c66e2827ac73b06d1f21151d17011dc7d6d5e75e5fa