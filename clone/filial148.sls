filial: 148
dhcpd:
  subnets:
    172.17.148.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.148.1
      broadcast_address: 172.17.148.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.148.254
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
      fixed_address: 172.17.148.101
      hardware: ethernet 00:00:00:00:48:01
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
      fixed_address: 172.17.148.120
      hardware: ethernet 94:C6:91:4E:4E:30
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.148.121
      hardware: ethernet 94:C6:91:4E:4E:3B
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.148.122
      hardware: ethernet F4:4D:30:8C:E9:94
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.148.123
      hardware: ethernet F4:4D:30:8C:E9:A1
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.148.124
      hardware: ethernet 94:C6:91:4E:2D:5C
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.148.125
      hardware: ethernet 94:C6:91:48:51:CE
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.17.148.126
      hardware: ethernet 94:C6:91:48:51:A1
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv027:
      fixed_address: 172.17.148.127
      hardware: ethernet 94:C6:91:48:51:E6
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0148-031:
      fixed_address: 172.17.148.131
      hardware: ethernet 94:C6:91:4E:4B:1A
      filename: /p2k/pxelinux.0
    P2K-PDV-0148-032:
      fixed_address: 172.17.148.132
      hardware: ethernet 94:C6:91:4E:30:64
      filename: /p2k/pxelinux.0
    P2K-PDV-0148-033:
      fixed_address: 172.17.148.133
      hardware: ethernet 94:C6:91:4E:29:D4
      filename: /p2k/pxelinux.0
    P2K-PDV-0148-034:
      fixed_address: 172.17.148.134
      hardware: ethernet 94:C6:91:4E:4B:32
      filename: /p2k/pxelinux.0
    telefonia:
      fixed_address: 172.17.148.200
      hardware: ethernet 00:00:00:00:48:20
    catalogo:
      fixed_address: 172.17.148.223
      hardware: ethernet 00:00:00:00:48:21
    impressora01:
      fixed_address: 172.17.148.151
      hardware: ethernet 64:EB:8C:B3:CE:C3
    impressora02:
      fixed_address: 172.17.148.152
      hardware: ethernet 64:EB:8C:B3:BF:A4
    impressora03:
      fixed_address: 172.17.148.153
      hardware: ethernet 64:EB:8C:B3:1D:33
    impressora04:
      fixed_address: 172.17.148.154
      hardware: ethernet 64:EB:8C:B3:BF:84
    impressora05:
      fixed_address: 172.17.148.155
      hardware: ethernet 64:EB:8C:B2:C8:84  

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
  work98: |
    CLIEN B4
    ESTAB 148
    CAIXA 98
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work99: |
    CLIEN B4
    ESTAB 148
    CAIXA 99
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work1: |
    CLIEN B4
    ESTAB 148
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
    ESTAB 148
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 148
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 148
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 148
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 148
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 148
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 148
    CAIXA 26
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work27: |
    CLIEN B4
    ESTAB 148
    CAIXA 27
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 148 189 LEBES001 44640 00000 SC0109558700189

nfs:
  nfs_server: 172.17.148.254
  
P2K-POS:
  ip: 172.17.148.133
  num_loja: 0148
  pdv: 033
  gateway: 172.17.148.1
  rede: 172.17.255.0
  cnpj: 96662168019746
  estado: RS
  ip_sp: 172.17.148.254
  
zabbix-proxy:
  psk: cf07d782bb3340655a724f6c5006106fe2d3b216f0d3b2d942dc6c98cd3e2a01  