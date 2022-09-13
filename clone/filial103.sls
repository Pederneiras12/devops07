filial: 103
dhcpd:
  subnets:
    172.17.103.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.103.1
      broadcast_address: 172.17.103.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.103.254
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
      fixed_address: 172.17.103.101
      hardware: ethernet 74:27:EA:72:C9:0F
      ltsp:
        SCREEN_04: ldm
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.103.120
      hardware: ethernet 00:1F:C6:9D:B2:24
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.103.121
      hardware: ethernet 94:DE:80:F1:7D:57
      ltsp:
        SCREEN_03: ssh-adm  
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.103.122
      hardware: ethernet 94:C6:91:48:56:26
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.103.123
      hardware: ethernet 00:0F:EA:D1:FC:18
      ltsp:
        SCREEN_03: ssh-adm        
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv024:
      fixed_address: 172.17.103.124
      hardware: ethernet 00:1F:C6:9D:B1:EB
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.103.125
      hardware: ethernet F4:4D:30:8C:F7:ED
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0103-031:
      fixed_address: 172.17.103.131
      hardware: ethernet E0:69:95:3B:44:30
    P2K-PDV-0103-032:
      fixed_address: 172.17.103.132
      hardware: ethernet F4:4D:30:83:F3:C0
    P2K-PDV-0103-033:
      fixed_address: 172.17.103.133
      hardware: ethernet 74:27:EA:72:C9:0D
    P2K-PDV-0103-034:
      fixed_address: 172.17.103.134
      hardware: ethernet 20:25:64:37:12:B5
    scanner-crediario:
      fixed_address: 172.17.103.240
      hardware: ethernet 3C:2A:F4:04:08:1F
    relogio-ponto:
      fixed_address: 172.17.103.210
      hardware: ethernet FC:52:CE:80:8D:8A

admcom:
  work98: |
    CLIEN B4
    ESTAB 103
    CAIXA 98
    RAMO  ?
    FISCAL
    PREVENDA YES
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN SIM
    NFCE YES
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work1: |
    CLIEN B4
    ESTAB 103
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 103
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 103
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 103
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 103
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 103
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 103
    CAIXA 25
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 103
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 103 108 LEBES001 44640 00000 RS0018101700108

zabbix-proxy:
  psk: 03192c8f49d48c3fa4b660ca1424e47f12e33b5cbb70146564a4168282f7e6a5