filial: 32
dhcpd:
  subnets:
    172.17.32.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.32.1
      broadcast_address: 172.17.32.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.32.254
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
      fixed_address: 172.17.32.101
      hardware: ethernet 00:0F:EA:D1:F5:23
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
    ws006:
      fixed_address: 172.17.32.106
      hardware: ethernet 00:0F:EA:D6:F3:2E
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws006
        UNIREDE_LP_TER: ws006
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv010:
      fixed_address: 172.17.32.110
      hardware: ethernet 00:1C:C0:D6:DB:52
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv011:
      fixed_address: 172.17.32.111
      hardware: ethernet 38:60:77:5C:6C:8B
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv012:
      fixed_address: 172.17.32.112
      hardware: ethernet 00:0F:EA:D6:B6:34
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv013:
      fixed_address: 172.17.32.113
      hardware: ethernet 74:27:EA:7D:9C:CE
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    pv014:
      fixed_address: 172.17.32.114
      hardware: ethernet FC:AA:14:F6:72:2E
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0032-031:
      fixed_address: 172.17.32.131
      hardware: ethernet 00:24:8C:FA:AD:18
    P2K-PDV-0032-032:
      fixed_address: 172.17.32.132
      hardware: ethernet 94:DE:80:F6:39:EE
    P2K-PDV-0032-033:
      fixed_address: 172.17.32.133
      hardware: ethernet 70:71:BC:4E:6D:26
    scanner-crediario:
      fixed_address: 172.17.32.240
      hardware: ethernet 30:05:5C:AC:15:FE
    relogio-ponto:
      fixed_address: 172.17.32.210
      hardware: ethernet FC:52:CE:80:8D:80
    NB-CALL-AUD-6:
      fixed_address: 172.17.32.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.32.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.32.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.32.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.32.229
      hardware: ethernet F4:30:B9:A8:B7:ED

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    RECIBO-BARRAS YES
    NUMERACAOAUTOMATICA YES
    NFCE YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
    LIBERALIMITETOKEN SIM
  work99: |
    CLIEN B4
    ESTAB 32
    CAIXA 99
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    COMECF NAO
    VENDA NAO
  work1: |
    CLIEN B4
    ESTAB 32
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work6: |
    CLIEN B4
    ESTAB 32
    CAIXA 6
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 32
    CAIXA 10
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work11: |
    CLIEN B4
    ESTAB 32
    CAIXA 11
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work12: |
    CLIEN B4
    ESTAB 32
    CAIXA 12
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work13: |
    CLIEN B4
    ESTAB 32
    CAIXA 13
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work14: |
    CLIEN B4
    ESTAB 32
    CAIXA 14
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 32
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 032 32 LEBES001 44640 00000 RS0017614800032

zabbix-proxy:
  psk: 2ae5b751a151383ff84f4b4becebcf42462ae3fcc2a952ef2f43f5863a6886b9