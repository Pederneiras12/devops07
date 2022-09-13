filial: 09
dhcpd:
  subnets:
    172.17.9.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.9.1
      broadcast_address: 172.17.9.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.9.254
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
      fixed_address: 172.17.9.101
      hardware: ethernet 00:0F:EA:D1:CB:8E
      ltsp:
        SCREEN_02: ssh-adm      
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    ws007:
      fixed_address: 172.17.9.107
      hardware: ethernet FC:AA:14:F8:96:BB
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm      
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws005
        UNIREDE_LP_TER: ws005
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR        
    ws008:
      fixed_address: 172.17.9.108
      hardware: ethernet 00:0F:EA:D2:1E:D6
      ltsp:
        SCREEN_02: ssh-adm    
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    P2K-PDV-0009-031:
      fixed_address: 172.17.9.131
      hardware: ethernet 00:1F:C6:9D:B2:D8
    P2K-PDV-0009-032:
      fixed_address: 172.17.9.132
      hardware: ethernet 94:DE:80:F0:F1:D9
    P2K-PDV-0009-033:
      fixed_address: 172.17.9.133
      hardware: ethernet 94:DE:80:F0:F1:D2
    P2K-PDV-0009-034:
      fixed_address: 172.17.9.134
      hardware: ethernet 00:1F:C6:9D:AB:28
    P2K-PDV-0009-035:
      fixed_address: 172.17.9.135
      hardware: ethernet 00:19:D1:8D:84:E3
    P2K-PDV-0009-036:
      fixed_address: 172.17.9.136
      hardware: ethernet 00:1C:C0:54:C7:65
    pv020:
      fixed_address: 172.17.9.120
      hardware: ethernet 00:0F:EA:D6:57:0F
      ltsp:
        SCREEN_03: ssh-adm        
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.9.121
      hardware: ethernet F4:4D:30:8C:FA:25
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.9.122
      hardware: ethernet 00:1F:C6:9D:BC:FD
      ltsp:
        SCREEN_04: ldm
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.9.123
      hardware: ethernet F4:4D:30:8C:EC:27
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.9.124
      hardware: ethernet F4:4D:30:8C:E8:9F
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.9.125
      hardware: ethernet 00:1F:C6:FF:7B:09
      ltsp:
        SCREEN_03: ssh-adm      
        UNIREDE_LP_MAT: ws001
    relogio-ponto:
      fixed_address: 172.17.9.210
      hardware: ethernet FC:52:CE:80:8D:8C
    scanner-crediario:
      fixed_address: 172.17.9.240
      hardware: ethernet 3C:2A:F4:21:C2:A7
    caixa-rapido-teste:
      fixed_address: 172.17.9.50
      hardware: ethernet 60:30:D4:03:CD:3D
    NB-CALL-AUD-6:
      fixed_address: 172.17.9.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.9.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.9.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.9.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.9.229
      hardware: ethernet F4:30:B9:A8:B7:ED      

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE-CONTIGENCIA NAO
    LIBERALIMITETOKEN SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work1: |
    CLIEN B4
    ESTAB 09
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    VENDA NAO
  work7: |
    CLIEN B4
    ESTAB 09
    CAIXA 7
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    VENDA NAO
  work8: |
    CLIEN B4
    ESTAB 09
    CAIXA 8
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
    ESTAB 09
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 09
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 09
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 09
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 09
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 09
    CAIXA 25
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 09
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO
  work98: |
    CLIEN B4
    ESTAB 09
    CAIXA 98
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES    

cdlspc: 009 054 LEBES001 44640 00000 RS0017694200054

zabbix-proxy:
  psk: dfc9f6a8fd20db35c67f1a89f4e0a0cdd5d76445312ba6c20c3016407cfe37e6