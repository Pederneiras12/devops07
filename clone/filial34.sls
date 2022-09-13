filial: 34
dhcpd:
  subnets:
    172.17.34.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.34.1
      broadcast_address: 172.17.34.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.34.254
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
      fixed_address : 172.17.34.101
      hardware: ethernet 00:0F:EA:D6:B9:D2
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
    ws002:
      fixed_address: 172.17.34.102
      hardware: ethernet FC:AA:14:F8:97:B4
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
      fixed_address: 172.17.34.120
      hardware: ethernet E0:69:95:3B:4C:6B
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.34.121
      hardware: ethernet FC:AA:14:F8:97:8D
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.34.122
      hardware: ethernet 94:C6:91:45:E4:D0
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.34.123
      hardware: ethernet F4:4D:30:8C:E8:77
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0034-032:
      fixed_address: 172.17.34.132
      hardware: ethernet 00:1C:C0:FE:04:20
    P2K-PDV-0034-033:
      fixed_address: 172.17.34.133
      hardware: ethernet 00:1F:C6:9D:A9:D1
    P2K-PDV-0034-034:
      fixed_address: 172.17.34.134
      hardware: ethernet 00:1F:C6:9D:AA:46
    P2K-PDV-0034-035:
      fixed_address: 172.17.34.135
      hardware: ethernet 00:27:0E:12:78:F8
    scanner-crediario:
      fixed_address: 172.17.34.240
      hardware: ethernet 30:05:5C:AC:0F:F2
    relogio-ponto:
      fixed_address: 172.17.34.210
      hardware: ethernet FC:52:CE:80:8D:9F

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO NO
    RECIBO-BARRAS YES
    NUMERACAOAUTOMATICA YES
    NFCE YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 34
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
    ESTAB 34
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    COMECF NAO
    NFE-VERSAO 310
    ABRE-GAVETA SIM
    VENDA NAO
  work2: |
    CLIEN B4
    ESTAB 34
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    COMECF NAO
    NFE-VERSAO 310
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 34
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 34
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 34
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 34
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 34
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO
    PAGAMENTO NAO

cdlspc: 034 038 LEBES001 44640 00000 RS0017621900038

zabbix-proxy:
  psk: 626a134e3b9bdcabcea43eff114b08c32004e1c862681c0fede06f8627ece5a3