filial: 29
dhcpd:
  subnets:
    172.17.29.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.29.1
      broadcast_address: 172.17.29.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.29.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    NB-CALL-AUD-6:
      fixed_address: 172.17.29.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.29.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.29.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.29.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.29.229
      hardware: ethernet F4:30:B9:A8:B7:ED
    ws001:
      fixed_address: 172.17.29.101
      hardware: ethernet 74:27:EA:7A:4F:5E
      ltsp:
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        SCREEN_02: ssh-adm
    ws008:
      fixed_address: 172.17.29.108
      hardware: ethernet 00:0F:EA:D1:DC:54
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws007
        UNIREDE_LP_TER: ws007
    ws010:
      fixed_address: 172.17.29.110
      hardware: ethernet 00:0F:EA:D7:23:1C
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws004
        UNIREDE_LP_TER: ws004
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws012:
      fixed_address: 172.17.29.112
      hardware: ethernet 00:0F:EA:D7:47:54
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
    pv020:
      fixed_address: 172.17.29.120
      hardware: ethernet F4:4D:30:8C:FB:95
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.29.121
      hardware: ethernet 00:0F:EA:D1:FB:5F
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv028:
      fixed_address: 172.17.29.128
      hardware: ethernet 38:60:77:6A:11:DB
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.29.123
      hardware: ethernet 00:0F:EA:23:23:8B
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.29.124
      hardware: ethernet 00:0F:EA:D6:64:69
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv029:
      fixed_address: 172.17.29.129
      hardware: ethernet 00:0F:EA:AF:BA:F1
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm        
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR        
    pv026:
      fixed_address: 172.17.29.126
      hardware: ethernet 00:0F:EA:AA:96:74
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv027:
      fixed_address: 172.17.29.127
      hardware: ethernet 00:0F:EA:AF:96:33
      ltsp:
        UNIREDE_LP_MAT: ws001
    relogio-ponto:
      fixed_address: 172.17.29.210
      hardware: ethernet FC:52:CE:80:82:EB
    scanner-crediario:
      fixed_address: 172.17.29.240
      hardware: ethernet 3C:2A:F4:21:A9:8A
    P2K-PDV-0029-031:
      fixed_address: 172.17.29.131
      hardware: ethernet 00:1F:C6:9D:B1:EB
    P2K-PDV-0029-032:
      fixed_address: 172.17.29.132
      hardware: ethernet 70:71:BC:4E:82:64
    P2K-PDV-0029-033:
      fixed_address: 172.17.29.133
      hardware: ethernet 94:DE:80:F0:50:AA
    P2K-PDV-0029-034:
      fixed_address: 172.17.29.134
      hardware: ethernet 00:1F:C6:9D:A6:2F
    P2K-PDV-0029-035:
      fixed_address: 172.17.29.135
      hardware: ethernet 00:1F:C6:9D:B9:CB

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN SIM
    NFCE YES
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work1: |
    CLIEN B4
    ESTAB 29
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
    ESTAB 29
    CAIXA 8
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 29
    CAIXA 10
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work11: |
    CLIEN B4
    ESTAB 29
    CAIXA 11
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 29
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 29
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work28: |
    CLIEN B4
    ESTAB 29
    CAIXA 28
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 29
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 29
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work29: |
    CLIEN B4
    ESTAB 29
    CAIXA 29
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 29
    CAIXA 26
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work27: |
    CLIEN B4
    ESTAB 29
    CAIXA 27
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 29
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 029 004 LEBES001 44640 00000 RS0017558200004

zabbix-proxy:
  psk: 659ba02aca12e9baba45034502b2be1f8ab440689825d1c0045b5aec883741ce