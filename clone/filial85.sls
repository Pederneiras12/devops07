filial: 85
dhcpd:
  subnets:
    172.17.85.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.85.1
      broadcast_address: 172.17.85.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.85.254
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
      fixed_address: 172.17.85.101
      hardware: ethernet FC:AA:14:F6:76:4A
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    ws002:
      fixed_address: 172.17.85.102
      hardware: ethernet 00:0F:EA:AA:1A:9D
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv010:
      fixed_address: 172.17.85.110
      hardware: ethernet 00:0F:EA:AA:20:33
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv011:
      fixed_address: 172.17.85.111
      hardware: ethernet FC:AA:14:F6:75:89
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv012:
      fixed_address: 172.17.85.112
      hardware: ethernet E0:69:95:3B:46:91
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv013:
      fixed_address: 172.17.85.113
      hardware: ethernet E0:69:95:3B:4A:4E
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    pv014:
      fixed_address: 172.17.85.114
      hardware: ethernet 00:0F:EA:D7:53:01
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv015:
      fixed_address: 172.17.85.115
      hardware: ethernet 90:E6:BA:9B:50:00
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0085-031:
      fixed_address: 172.17.85.131
      hardware: ethernet 38:60:77:5C:64:E1
    P2K-PDV-0085-032:
      fixed_address: 172.17.85.132
      hardware: ethernet 02:19:77:81:3E:28
    P2K-PDV-0085-033:
      fixed_address: 172.17.85.133
      hardware: ethernet E0:69:95:56:98:76
    P2K-PDV-0085-034:
      fixed_address: 172.17.85.134
      hardware: ethernet E0:69:95:3B:45:C8
    relogio-ponto:
      fixed_address: 172.17.85.210
      hardware: ethernet FC:52:CE:80:6F:70
    scanner-crediario:
      fixed_address: 172.17.85.240
      hardware: ethernet 3C:2A:F4:21:A9:65
    NB-CALL-AUD-6:
      fixed_address: 172.17.85.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.85.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.85.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.85.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.85.229
      hardware: ethernet F4:30:B9:A8:B7:ED
admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN b4
    ESTAB 85
    CAIXA 99
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work1: |
    CLIEN b4
    ESTAB 85
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
  work2: |
    CLIEN b4
    ESTAB 85
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
  work10: |
    CLIEN b4
    ESTAB 85
    CAIXA 10
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work11: |
    CLIEN b4
    ESTAB 85
    CAIXA 11
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work12: |
    CLIEN b4
    ESTAB 85
    CAIXA 12
    RAMO ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work13: |
    CLIEN b4
    ESTAB 85
    CAIXA 13
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work14: |
    CLIEN b4
    ESTAB 85
    CAIXA 14
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work15: |
    CLIEN b4
    ESTAB 85
    CAIXA 15
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN b4
    ESTAB 85
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 085 087 LEBES001 44640 00000 RS0017948200087

zabbix-proxy:
  psk: 0f83280d1847b2c988e04b8c667a72c6f1bf0697ab11ab6a897ce85ca9582eee