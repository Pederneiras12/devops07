filial: 132
dhcpd:
  subnets:
    172.17.132.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.132.1
      broadcast_address: 172.17.132.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.132.254
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
      fixed_address: 172.17.132.101
      hardware: ethernet FC:AA:14:F8:96:9E
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    ws004:
      fixed_address: 172.17.132.104
      hardware: ethernet FC:AA:14:F8:9C:89
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    pv020:
      fixed_address: 172.17.132.120
      hardware: ethernet 00:24:8C:FF:FB:73
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.132.121
      hardware: ethernet E0:69:95:3B:4B:FA
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.132.122
      hardware: ethernet 70:71:BC:52:37:C3
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.132.123
      hardware: ethernet FC:AA:14:F8:97:87
      ltsp:
        SCREEN_04: ldm      
        SCREEN_03: ssh-adm      
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv024:
      fixed_address: 172.17.132.124
      hardware: ethernet FC:AA:14:F8:A0:B2
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    scanner-crediario:
      fixed_address: 172.17.132.240
      hardware: ethernet 3C:2A:F4:21:C2:90
    P2K-PDV-0132-031:
      fixed_address: 172.17.132.131
      hardware: ethernet 00:24:8C:FF:FB:08
    P2K-PDV-0132-032:
      fixed_address: 172.17.132.132
      hardware: ethernet E0:69:95:3B:49:37
      
admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA yes
    RECIBO-BARRAS yes
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    NFCE-CONTIGENCIA SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work1: |
    CLIEN B4
    ESTAB 132
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    ABRE-GAVETA SIM
    VENDA NAO
  work4: |
    CLIEN B4
    ESTAB 132
    CAIXA 3
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    ABRE-GAVETA SIM
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 132
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 132
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 132
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 132
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 132
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 132 144 LEBES001 44640 00000 RS0019259000144

zabbix-proxy:
  psk: e327ab95e346813613d7d85915c8aaa66fb1f89bf5d56e2727fa310d6292b09d