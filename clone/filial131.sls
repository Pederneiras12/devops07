filial: 131
dhcpd:
  subnets:
    172.17.131.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.131.1
      broadcast_address: 172.17.131.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.131.254
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
      fixed_address: 172.17.131.101
      hardware: ethernet 74:27:EA:72:C9:19
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    ws004:
      fixed_address: 172.17.131.104
      hardware: ethernet 74:27:EA:7A:4C:9E
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
      fixed_address: 172.17.131.120
      hardware: ethernet 74:27:EA:7A:4F:08
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.131.121
      hardware: ethernet 74:27:EA:7A:4F:7E
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.131.122
      hardware: ethernet 74:27:EA:73:2D:E2
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.131.123
      hardware: ethernet 74:27:EA:7A:4F:68
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.131.124
      hardware: ethernet 74:27:EA:7A:4F:24
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    scanner-crediario:
      fixed_address: 172.17.131.240
      hardware: ethernet 3C:2A:F4:21:A9:DC
    P2K-PDV-0131-031:
      fixed_address: 172.17.131.131
      hardware: ethernet 00:24:8C:FA:BF:4F 
    P2K-PDV-0131-032:
      fixed_address: 172.17.131.132
      hardware: ethernet FC:AA:14:F6:7C:E9

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA yes
    RECIBO-BARRAS yes
    NFCE yes
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    USATROCAFONE SIM
    NFCE-CONTIGENCIA SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
    LIBERALIMITETOKEN SIM
  work1: |
    CLIEN B4
    ESTAB 131
    CAIXA 1
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
    ESTAB 131
    CAIXA 4
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 131
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 131
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 131
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 131
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 131
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 131 143 LEBES001 44640 00000 RS0019258700143

zabbix-proxy:
  psk: 8216d259d86273a37c5634f16e2c5ab1e6c266a123ad0880ec54893ea5208634