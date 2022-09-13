filial: 125
dhcpd:
  subnets:
    172.17.125.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.125.1
      broadcast_address: 172.17.125.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.125.254
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
      fixed_address: 172.17.125.101
      hardware: ethernet 00:24:8C:FA:BD:4B
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    ws005:
      fixed_address: 172.17.125.105
      hardware: ethernet 00:0F:EA:D6:A1:CB
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
    P2K-PDV-0125-031:
      fixed_address: 172.17.125.131
      hardware: ethernet 00:1F:C6:9D:B4:45
    P2K-PDV-0125-032:
      fixed_address: 172.17.125.132
      hardware: ethernet 38:60:77:26:FF:D8
    P2K-PDV-0125-033:
      fixed_address: 172.17.125.133
      hardware: ethernet E0:69:95:3B:4D:FA

    pv020:
      fixed_address: 172.17.125.120
      hardware: ethernet 00:0F:EA:D2:30:37
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.125.121
      hardware: ethernet 00:1F:D0:E8:62:3E
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.125.122
      hardware: ethernet 00:27:0E:16:3E:5D
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.125.123
      hardware: ethernet 74:27:EA:77:84:49
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv024:
      fixed_address: 172.17.125.124
      hardware: ethernet 00:1F:C6:FF:7B:17
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    relogio-ponto:
      fixed_address: 172.17.125.210
      hardware: ethernet FC:52:CE:80:8D:5A
    scanner-crediario:
      fixed_address: 172.17.125.240
      hardware: ethernet 3C:2A:F4:21:A9:16

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    RECIBO-BARRAS YES
    NUMERACAOAUTOMATICA YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE YES
    NFCE-CONTIGENCIA SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
    LIBERALIMITETOKEN SIM
  work1: |
    CLIEN B4
    ESTAB 125
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work5: |
    CLIEN B4
    ESTAB 125
    CAIXA 5
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 125
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 125
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 125
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 125
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 125
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 125
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 125 135 LEBES001 44640 00000 RS0019939300135

zabbix-proxy:
  psk: 972f4dfa273ba6169d4f49095cb21b3c053d5d5293915c2f4083732902bb9440