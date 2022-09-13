filial: 165
dhcpd:
  subnets:
    172.17.165.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.165.1
      broadcast_address: 172.17.165.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.165.254
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
      fixed_address: 172.17.165.101
      hardware: ethernet 94:C6:91:45:ED:00
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
      fixed_address: 172.17.165.120
      hardware: ethernet 94:C6:91:45:E7:A7
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.165.121
      hardware: ethernet 94:C6:91:45:F0:D3
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.165.122
      hardware: ethernet 94:C6:91:45:EB:EF
      ltsp:
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.165.123
      hardware: ethernet 94:C6:91:45:E7:79
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.165.124
      hardware: ethernet 94:C6:91:45:EF:7E
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.165.125
      hardware: ethernet 94:C6:91:45:01:00
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0165-031:
      fixed_address: 172.17.165.131
      hardware: ethernet 94:C6:91:45:F2:E8
    P2K-PDV-0165-032:
      fixed_address: 172.17.165.132
      hardware: ethernet 94:C6:91:45:EE:57
    P2K-PDV-0165-033:
      fixed_address: 172.17.165.133
      hardware: ethernet 94:C6:91:45:EF:77
    P2K-PDV-0165-034:
      fixed_address: 172.17.165.134
      hardware: ethernet 94:C6:91:45:EC:F6  
    P2K-PDV-0165-035:
      fixed_address: 172.17.165.135
      hardware: ethernet 94:C6:91:45:EC:F7
    P2K-PDV-0165-036:
      fixed_address: 172.17.165.136
      hardware: ethernet 94:C6:91:45:EF:74
    telefonia:
      fixed_address: 172.17.165.200
      hardware: ethernet 80:EE:73:BB:B6:1A      
    catalogo:
      fixed_address: 172.17.165.223
      hardware: ethernet D0:94:66:AF:EA:9A

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
    ESTAB 165
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
    ESTAB 165
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 165
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 165
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 165
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 165
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 165
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    
cdlspc: 165 184 LEBES001 44640 00000 RS0011745800184

zabbix-proxy:
  psk: bc0b3cea44ec29fcb31206a3c47a7e3a68e2c2bdb4eab6697033e4e4f9e6c9d3