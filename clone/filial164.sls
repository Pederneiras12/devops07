filial: 164
dhcpd:
  subnets:
    172.17.164.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.164.1
      broadcast_address: 172.17.164.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.164.254
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
      fixed_address: 172.17.164.101
      hardware: ethernet 50:B3:63:02:AA:00
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
      fixed_address: 172.17.164.120
      hardware: ethernet 00:0F:EA:D1:BE:CD
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.164.121
      hardware: ethernet 00:1F:C6:9D:A6:33
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.164.122
      hardware: ethernet 50:B3:63:02:99:B2
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.164.123
      hardware: ethernet 50:B3:63:02:96:A6
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.164.124
      hardware: ethernet 50:B3:63:02:97:8C
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.164.125
      hardware: ethernet 00:0F:EA:D2:1D:25
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv026:
      fixed_address: 172.17.164.126
      hardware: ethernet 50:B3:63:02:96:94
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv027:
      fixed_address: 172.17.164.127
      hardware: ethernet E0:CB:4E:22:CB:F4
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0164-031:
      fixed_address: 172.17.164.131
      hardware: ethernet 50:B3:63:02:95:C2
    P2K-PDV-0164-032:
      fixed_address: 172.17.161.132
      hardware: ethernet 50:B3:63:02:95:BB
    P2K-PDV-0164-033:
      fixed_address: 172.17.164.133
      hardware: ethernet 50:B3:63:02:9E:02
    P2K-PDV-0164-034:
      fixed_address: 172.17.164.134
      hardware: ethernet 50:B3:63:02:9E:06
    P2K-PDV-0164-035:
      fixed_address: 172.17.164.135
      hardware: ethernet 50:B3:63:02:9B:51
      filename: /p2k/pxelinux.0
    P2K-PDV-0164-036:
      fixed_address: 172.17.164.136
      hardware: ethernet 50:B3:63:02:98:8F
    P2K-PDV-0164-037:
      fixed_address: 172.17.164.137
      hardware: ethernet 50:B3:63:02:98:85
    telefonia:
      fixed_address: 172.17.164.200
      hardware: ethernet 80:EE:73:D8:44:20
    catalogo:
      fixed_address: 172.17.164.223
      hardware: ethernet D0:94:66:A5:AA:F3


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
    ESTAB 164
    CAIXA 98
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work1: |
    CLIEN B4
    ESTAB 164
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
    ESTAB 164
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 164
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 164
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 164
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 164
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 164
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 164
    CAIXA 26
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work27: |
    CLIEN B4
    ESTAB 164
    CAIXA 27
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 164 181 LEBES001 44640 00000 RS0011742800164

nfs:
  nfs_server: 172.17.164.254
  
P2K-POS:
  ip: 172.17.164.135
  num_loja: 0164
  pdv: 035
  gateway: 172.17.164.1
  rede: 172.17.255.0
  cnpj: 96662168019746
  estado: RS
  ip_sp: 172.17.164.254
  
zabbix-proxy:
  psk: f44cc304d6f7944daa4a50d8a5c713155e704f49815f68d4feb5fdeee7d99070  