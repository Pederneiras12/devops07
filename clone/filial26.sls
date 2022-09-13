filial: 26
dhcpd:
  subnets:
    172.17.26.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.26.1
      broadcast_address: 172.17.26.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.26.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws006:
      fixed_address: 172.17.26.106
      hardware: ethernet 94:DE:80:F6:39:EE
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv010:
      fixed_address: 172.17.26.110
      hardware: ethernet E0:69:95:3B:49:78
      ltsp:
        UNIREDE_LP_MAT: ws001
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
    pv011:
      fixed_address: 172.17.26.111
      hardware: ethernet 00:26:18:E9:D8:29
      ltsp:
        SCREEN_04: ldm
        SCREEN_03: ssh-adm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
        UNIREDE_LP_MAT: ws001
    pv012:
      fixed_address: 172.17.26.112
      hardware: ethernet 00:0F:EA:DA:15:02
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv013:
      fixed_address: 172.17.26.113
      hardware: ethernet 00:1C:25:AD:EF:4E
      ltsp:
        SCREEN_04: ldm
    pv014:
      fixed_address: 172.17.26.114
      hardware: ethernet FC:AA:14:F6:7A:10
      ltsp:
        SCREEN_04: ldm
    P2K-PDV-0026-031:
      fixed_address: 172.17.26.131
      hardware: ethernet FC:AA:14:F6:71:45
    P2K-PDV-0026-032:
      fixed_address: 172.17.26.132
      hardware: ethernet 00:00:00:00:00:01
    P2K-PDV-0026-033:
      fixed_address: 172.17.26.133
      hardware: ethernet E0:69:95:56:B2:47
    P2K-PDV-0026-034:
      fixed_address: 172.17.26.134
      hardware: ethernet F4:4D:30:83:F3:D5
    P2K-PDV-0026-035:
      fixed_address: 172.17.26.135
      hardware: ethernet 00:24:8C:FA:BF:69
    scanner-crediario:
      fixed_address: 172.17.26.240
      hardware: ethernet 30:05:5C:AC:58:DD
    relogio-ponto:
      fixed_address: 172.17.26.210
      hardware: ethernet FC:52:CE:80:8D:96   
    NB-CALL-AUD-6:
      fixed_address: 172.17.26.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.26.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.26.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.26.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.26.229
      hardware: ethernet F4:30:B9:A8:B7:ED      

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    NFCE YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 26
    CAIXA 99
    RAMO  ?
    FISCAL 
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work1: |
    CLIEN b4
    ESTAB 26
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work6: |
    CLIEN B4
    ESTAB 26
    CAIXA 6
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 26
    CAIXA 10
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work11: |
    CLIEN B4
    ESTAB 26
    CAIXA 11
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work12: |
    CLIEN B4
    ESTAB 26
    CAIXA 12
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work13: |
    CLIEN B4
    ESTAB 26
    CAIXA 13
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work14: |
    CLIEN B4
    ESTAB 26
    CAIXA 14
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 026 026 LEBES001 44640 00000 RS0017593600026

zabbix-proxy:
  psk: 4aa573cc9d73670a33ab18555d3ddb5fd62e99e1bbcfac6820106aba45cdf232