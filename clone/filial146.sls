filial: 146
dhcpd:
  subnets:
    172.17.146.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.146.1
      broadcast_address: 172.17.146.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.146.254
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
      fixed_address: 172.17.146.101
      hardware: ethernet 00:00:00:00:00:A1
      ltsp:
        SCREEN_03: ssh-adm
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
      fixed_address: 172.17.146.120
      hardware: ethernet 94:C6:91:48:51:A8
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.146.121
      hardware: ethernet 94:C6:91:4E:4C:DE
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.146.122
      hardware: ethernet 94:C6:91:4E:4E:32
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.146.123
      hardware: ethernet 94:C6:91:48:51:CE
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.146.124
      hardware: ethernet 00:00:00:00:00:A6
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.146.125
      hardware: ethernet 00:00:00:00:00:A7
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.17.146.126
      hardware: ethernet 00:00:00:00:00:A8
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0146-031:
      fixed_address: 172.17.146.131
      hardware: ethernet 94:C6:91:48:51:A1
      filename: /p2k/pxelinux.0
    P2K-PDV-0146-032:
      fixed_address: 172.17.146.132
      hardware: ethernet 94:C6:91:4B:EA:54
      filename: /p2k/pxelinux.0
    P2K-PDV-0146-033:
      fixed_address: 172.17.146.133
      hardware: ethernet 94:C6:91:4B:D6:DD
      filename: /p2k/pxelinux.0
    P2K-PDV-0146-034:
      fixed_address: 172.17.146.134
      hardware: ethernet 94:C6:91:48:51:A1
      filename: /p2k/pxelinux.0
    P2K-PDV-0146-035:
      fixed_address: 172.17.146.135
      hardware: ethernet 94:C6:91:4E:53:35
      filename: /p2k/pxelinux.0
    P2K-PDV-0146-036:
      fixed_address: 172.17.146.136
      hardware: ethernet 94:C6:91:4E:4C:D5
      filename: /p2k/pxelinux.0
    P2K-PDV-0146-037:
      fixed_address: 172.17.146.137
      hardware: ethernet 00:00:00:00:00:B7
      filename: /p2k/pxelinux.0
    P2K-PDV-0146-038:
      fixed_address: 172.17.146.138
      hardware: ethernet 00:00:00:00:00:B8
      filename: /p2k/pxelinux.0
    telefonia:
      fixed_address: 172.17.146.200
      hardware: ethernet 00:00:00:00:00:C2
    catalogo:
      fixed_address: 172.17.146.201
      hardware: ethernet 00:00:00:00:00:C4


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
  work99: |
    CLIEN B4
    ESTAB 146
    CAIXA 99
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work98: |
    CLIEN B4
    ESTAB 146
    CAIXA 98
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work1: |
    CLIEN B4
    ESTAB 146
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
    ESTAB 146
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 146
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 146
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 146
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 146
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 146
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 146
    CAIXA 26
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work27: |
    CLIEN B4
    ESTAB 146
    CAIXA 27
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 146 188 LEBES001 44640 00000 RS00130012188

nfs:
  nfs_server: 172.17.146.254
  
P2K-POS:
  ip: 172.17.146.134
  num_loja: 0146
  pdv: 034
  gateway: 172.17.146.1
  rede: 172.17.255.0
  cnpj: 96662168019746
  estado: RS
  ip_sp: 172.17.146.254
  
zabbix-proxy:
  psk: 6ab2d9653493db8c7c846486b9266a9da56349edc628260ee9877b3752744f6b  