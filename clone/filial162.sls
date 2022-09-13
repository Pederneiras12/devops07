filial: 162
dhcpd:
  subnets:
    172.17.162.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.162.1
      broadcast_address: 172.17.162.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.162.254
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
      fixed_address: 172.17.162.101
      hardware: ethernet 00:0F:EA:D2:28:D0
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
    pv026:
      fixed_address: 172.17.162.126
      hardware: ethernet 50:B3:63:02:A8:98
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    pv021:
      fixed_address: 172.17.162.121
      hardware: ethernet 50:B3:63:02:A3:C8
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    pv022:
      fixed_address: 172.17.162.122
      hardware: ethernet 50:B3:63:02:98:E0
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.162.123
      hardware: ethernet 50:B3:63:02:98:65
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.162.124
      hardware: ethernet 50:B3:63:02:A5:69
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.162.125
      hardware: ethernet 00:0F:EA:D7:40:A3
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0162-031:
      fixed_address: 172.17.162.131
      hardware: ethernet 94:C6:91:45:F0:A9
    P2K-PDV-0162-032:
      fixed_address: 172.17.162.132
      hardware: ethernet 94:C6:91:45:FB:D2
    P2K-PDV-0162-033:
      fixed_address: 172.17.162.133
      hardware: ethernet 94:C6:91:45:E4:CA
    P2K-PDV-0162-034:
      fixed_address: 172.17.162.134
      hardware: ethernet 94:C6:91:45:EE:25  
    P2K-PDV-0162-035:
      fixed_address: 172.17.162.135
      hardware: ethernet 50:B3:63:02:A3:D8
    impressora01:
      fixed_address: 172.17.162.151
      hardware: ethernet 64:EB:8C:B3:CD:58
    impressora02:
      fixed_address: 172.17.162.152
      hardware: ethernet 64:EB:8C:B2:C8:2F
    impressora03:
      fixed_address: 172.17.162.153
      hardware: ethernet 64:EB:8C:B2:C8:20
    impressora04:
      fixed_address: 172.17.162.154
      hardware: ethernet 64:EB:8C:B2:C8:4E

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
    ESTAB 162
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work26: |
    CLIEN B4
    ESTAB 162
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 162
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 162
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 162
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 162
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 162
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
   work98: |
    CLIEN B4
    ESTAB 162
    CAIXA 98
    RAMO  ?
    FISCAL
    PREVENDA YES
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO

    
cdlspc: 162 183 LEBES001 44640 00000 SC0561743300183

zabbix-proxy:
  psk: a9fba85cebbb7bc274974955d4204b27c30d99a76bfe7f480e173bae2a4627ae