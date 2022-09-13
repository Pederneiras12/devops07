filial: 163
dhcpd:
  subnets:
    172.17.163.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.163.1
      broadcast_address: 172.17.163.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.163.254
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
      fixed_address: 172.17.163.101
      hardware: ethernet 94:C6:91:48:69:DF
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
      fixed_address: 172.17.163.120
      hardware: ethernet 94:C6:91:47:AF:F4
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    pv021:
      fixed_address: 172.17.163.121
      hardware: ethernet 94:C6:91:47:B1:13
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    pv022:
      fixed_address: 172.17.163.122
      hardware: ethernet 94:C6:91:47:B2:EB
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.163.123
      hardware: ethernet 94:C6:91:47:B1:FB
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.163.124
      hardware: ethernet 94:C6:91:47:B2:C8
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.163.125
      hardware: ethernet 00:0F:EA:AF:BC:8F
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    P2K-PDV-0163-031:
      fixed_address: 172.17.163.131
      hardware: ethernet 94:C6:91:47:B2:C7
    P2K-PDV-0163-033:
      fixed_address: 172.17.163.133
      hardware: ethernet 94:C6:91:47:B2:CE
    P2K-PDV-0163-034:
      fixed_address: 172.17.163.134
      hardware: ethernet 94:C6:91:47:B2:AF  
    P2K-PDV-0163-035:
      fixed_address: 172.17.163.135
      hardware: ethernet 94:C6:91:47:B2:D8
    P2K-PDV-0163-036:
      fixed_address: 172.17.163.136
      hardware: ethernet 94:C6:91:47:B2:C3
    P2K-PDV-0163-037:
      fixed_address: 172.17.163.137
      hardware: ethernet 94:C6:91:47:B2:B9
    telefonia:
      fixed_address: 172.17.163.200
      hardware: ethernet 80:EE:73:D6:F2:98     
    catalogo:
      fixed_address: 172.17.163.223
      hardware: ethernet D0:94:66:AF:EA:4D
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
    ESTAB 163
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
    ESTAB 163
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 163
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 163
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 163
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 163
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 163
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    
cdlspc: 163 183 LEBES001 44640 00000 SC0561743300183

zabbix-proxy:
  psk: e27e6d9952bc883fea473fe2d3b918b60ff54a9221c51278886f444237d02248