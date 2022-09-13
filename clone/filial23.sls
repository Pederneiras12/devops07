filial: 23
dhcpd:
  subnets:
    172.17.23.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.23.1
      broadcast_address: 172.17.23.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.23.254
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
      fixed_address: 172.17.23.101
      hardware: ethernet E0:69:95:3B:4B:C8
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    ws007:
      fixed_address: 172.17.23.107
      hardware: ethernet 00:0F:EA:D6:E6:BE
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws007
        UNIREDE_LP_TER: ws007
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.23.120
      hardware: ethernet 00:0F:EA:D6:7B:59
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.23.121
      hardware: ethernet 70:5A:0F:69:F6:EB
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.23.122
      hardware: ethernet 44:87:FC:BF:3F:B1
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.23.123
      hardware: ethernet 70:5A:0F:69:17:50
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv024:
      fixed_address: 172.17.23.124
      hardware: ethernet 00:1F:C6:9D:C4:F7
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0023-031:
      fixed_address: 172.17.23.131
      hardware: ethernet FC:AA:14:F6:72:EC
    P2K-PDV-0023-032:
      fixed_address: 172.17.23.132
      hardware: ethernet 00:22:15:C1:24:A5
    P2K-PDV-0023-033:
      fixed_address: 172.17.23.133
      hardware: ethernet FC:AA:14:F6:71:84
    P2K-PDV-0023-034:
      fixed_address: 172.17.23.134
      hardware: ethernet 00:1F:C6:9D:AD:7F
    P2K-PDV-0023-035:
      fixed_address: 172.17.23.135
      hardware: ethernet 00:22:15:C1:24:5C
    scanner-crediario:
      fixed_address: 172.17.23.240
      hardware: ethernet 30:05:5C:AC:59:14
    relogio-ponto:
      fixed_address: 172.17.23.210
      hardware: ethernet FC:52:CE:80:8D:98      

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
  work1: |
    CLIEN B4
    ESTAB 23
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work7: |
    CLIEN B4
    ESTAB 23
    CAIXA 7
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 23
    CAIXA 20
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 23
    CAIXA 21
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 23
    CAIXA 22
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 23
    CAIXA 23
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 23
    CAIXA 24
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 23
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO
    PAGAMENTO NAO

cdlspc: 023 117 LEBES001 44640 00000 RS0018133800117

zabbix-proxy:
  psk: fdac6d6a59bfb961cbab2d2da97de82c08d7284c84f17052c63eb0aa1f1a8a1a