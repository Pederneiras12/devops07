filial: 147
dhcpd:
  subnets:
    172.17.147.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.147.1
      broadcast_address: 172.17.147.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.147.254
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
      fixed_address: 172.17.147.101
      hardware: ethernet 00:00:00:00:00:01
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
      fixed_address: 172.17.147.120
      hardware: ethernet 94:C6:91:4E:4F:8C
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv028:
      fixed_address: 172.17.147.128
      hardware: ethernet 94:C6:91:4E:4E:A3
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.147.122
      hardware: ethernet 94:C6:91:4E:4E:32
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.147.123
      hardware: ethernet 94:C6:91:48:51:B2
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv029:
      fixed_address: 172.17.147.129
      hardware: ethernet 94:C6:91:4F:28:7A
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.147.125
      hardware: ethernet 94:C6:91:4E:4C:D3
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.17.147.126
      hardware: ethernet 94:C6:91:4E:4E:EB
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv027:
      fixed_address: 172.17.147.127
      hardware: ethernet 94:C6:91:4E:51:64
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0147-031:
      fixed_address: 172.17.147.131
      hardware: ethernet 94:C6:91:4E:4C:DE
      filename: /p2k/pxelinux.0
    P2K-PDV-0147-032:
      fixed_address: 172.17.147.132
      hardware: ethernet 94:C6:91:48:67:DE
      filename: /p2k/pxelinux.0
    P2K-PDV-0147-033:
      fixed_address: 172.17.147.133
      hardware: ethernet 94:C6:91:4B:D6:1C
      filename: /p2k/pxelinux.0
    P2K-PDV-0147-034:
      fixed_address: 172.17.147.134
      hardware: ethernet 94:C6:91:4E:55:C2
      filename: /p2k/pxelinux.0
    P2K-PDV-0147-035:
      fixed_address: 172.17.147.135
      hardware: ethernet 94:C6:91:4B:D6:EC
      filename: /p2k/pxelinux.0
    P2K-PDV-0147-036:
      fixed_address: 172.17.147.136
      hardware: ethernet 94:C6:91:4E:4E:E8
      filename: /p2k/pxelinux.0
    P2K-PDV-0147-037:
      fixed_address: 172.17.147.137
      hardware: ethernet 94:C6:91:4E:4C:D5
      filename: /p2k/pxelinux.0
    P2K-PDV-0147-038:
      fixed_address: 172.17.147.138
      hardware: ethernet 94:C6:91:4E:53:35
      filename: /p2k/pxelinux.0
    P2K-PDV-0147-039:
      fixed_address: 172.17.147.139
      hardware: ethernet 00:00:00:00:00:18
      filename: /p2k/pxelinux.0
    P2K-PDV-0147-040:
      fixed_address: 172.17.147.140
      hardware: ethernet 00:00:00:00:00:19
      filename: /p2k/pxelinux.0
    telefonia:
      fixed_address: 172.17.147.200
      hardware: ethernet 00:00:00:00:00:20
    catalogo:
      fixed_address: 172.17.147.223
      hardware: ethernet 00:00:00:00:00:21


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
    ESTAB 147
    CAIXA 98
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work1: |
    CLIEN B4
    ESTAB 147
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
    ESTAB 147
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work28: |
    CLIEN B4
    ESTAB 147
    CAIXA 28
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 147
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 147
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work29: |
    CLIEN B4
    ESTAB 147
    CAIXA 29
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 147
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 147
    CAIXA 26
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work27: |
    CLIEN B4
    ESTAB 147
    CAIXA 27
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 147 187 LEBES001 44640 00000 RS0013000100187

nfs:
  nfs_server: 172.17.147.254
  
P2K-POS:
  ip: 172.17.147.131
  num_loja: 0147
  pdv: 031
  gateway: 172.17.147.1
  rede: 172.17.255.0
  cnpj: 96662168019746
  estado: RS
  ip_sp: 172.17.147.254
  
zabbix-proxy:
  psk: 73106b46fd283a89e5e19d03024edb7c272a4838e2796e8d1bd43dcb43a01ef0  