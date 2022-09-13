filial: 145
dhcpd:
  subnets:
    172.17.145.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.145.1
      broadcast_address: 172.17.145.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.145.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth1')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws001:
      fixed_address: 172.17.145.101
      hardware: ethernet 94:C6:91:4D:F9:03
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
      fixed_address: 172.17.145.120
      hardware: ethernet 94:C6:91:48:52:16
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.145.121
      hardware: ethernet 94:C6:91:4E:55:1F
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.145.122
      hardware: ethernet 94:C6:91:4E:4E:0F
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.145.123
      hardware: ethernet 94:C6:91:4E:53:7F
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.145.124
      hardware: ethernet 94:C6:91:48:3F:FA
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.145.125
      hardware: ethernet 94:C6:91:4E:55:2B
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv026:
      fixed_address: 172.17.145.126
      hardware: ethernet 94:C6:91:4B:D7:91
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    P2K-PDV-0145-031:
      fixed_address: 172.17.145.131
      hardware: ethernet 94:C6:91:4E:55:6C
    P2K-PDV-0145-032:
      fixed_address: 172.17.145.132
      hardware: ethernet 94:C6:91:4E:53:79
    P2K-PDV-0145-033:
      fixed_address: 172.17.145.133
      hardware: ethernet 94:C6:91:48:41:4A  
    P2K-PDV-0145-034:
      fixed_address: 172.17.145.134
      hardware: ethernet 94:C6:91:4B:D6:3C
    P2K-PDV-0145-035:
      fixed_address: 172.17.145.135
      hardware: ethernet 94:C6:91:4B:D7:22
    P2K-PDV-0145-037:
      fixed_address: 172.17.145.136
      hardware: ethernet 00:00:00:00:00:13
    telefonia:
      fixed_address: 172.17.145.200
      hardware: ethernet 08:0E:E7:3D:FB:7B     
    catalogo:
      fixed_address: 172.17.145.223
      hardware: ethernet D0:94:66:B3:AF:B5
    NB-CALL-AUD-6:
      fixed_address: 172.17.13.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.145.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.145.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.145.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.145.229
      hardware: ethernet F4:30:B9:A8:B7:ED
      
admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA yes
    RECIBO-BARRAS yes
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    NFCE YES
    LIBERALIMITETOKEN SIM
    FEIRAO-NOME-LIMPO SIM
  work1: |
    CLIEN B4
    ESTAB 145
    CAIXA 1
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
    ESTAB 145
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 145
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 145
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 145
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 145
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 145
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 145
    CAIXA 26
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work98: |
    CLIEN B4
    ESTAB 145
    CAIXA 98
    RAMO  ?
    FISCAL
    PREVENDA YES
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO

    
cdlspc: 145 186 LEBES001 44640 00000 RS0011794200186

zabbix-proxy:
  psk: 79bad31c2022bd0e92701e5dae002bb7baecd252d2e9577ace0e08fefe3ace7a