filial: 94
dhcpd:
  subnets:
    172.17.94.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.94.1
      broadcast_address: 172.17.94.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.94.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws007:
      fixed_address: 172.17.94.107
      hardware: ethernet F4:4D:30:83:C2:42
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws007
        UNIREDE_LP_TER: ws007
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws008:
      fixed_address: 172.17.94.108
      hardware: ethernet 1C:69:7A:8C:E0:2A
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws007
        UNIREDE_LP_TER: ws007
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.94.120
      hardware: ethernet E0:69:95:56:98:74
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws007
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.94.121
      hardware: ethernet 40:16:7E:BB:53:8B
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws007
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.94.122
      hardware: ethernet 00:1F:C6:9D:BC:E6
      ltsp:
        UNIREDE_LP_MAT: ws007
    pv025:
      fixed_address: 172.17.94.125
      hardware: ethernet E0:69:95:AF:67:C4
      ltsp:
        UNIREDE_LP_MAT: ws007
        SCREEN_03: ssh-adm
    pv026:
      fixed_address: 172.17.94.126
      hardware: ethernet FC:AA:14:F8:98:50
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws007
    P2K-PDV-0094-031:
      fixed_address: 172.17.94.131
      hardware: ethernet 00:24:8C:FF:EE:64
    P2K-PDV-0094-032:
      fixed_address: 172.17.94.132
      hardware: ethernet 10:88:0F:00:87:33
    P2K-PDV-0094-033:
      fixed_address: 172.17.94.133
      hardware: ethernet E0:69:95:3B:4F:B6
    P2K-PDV-0094-034:
      fixed_address: 172.17.94.134
      hardware: ethernet 10:88:0F:00:87:32
    scanner-crediario:
      fixed_address: 172.17.94.240
      hardware: ethernet 30:05:5C:CF:FC:E9
    
admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA yes
    RECIBO-BARRAS yes
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE YES
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
    LIBERALIMITETOKEN SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN b4
    ESTAB 94
    CAIXA 99
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work7: |
    CLIEN b4
    ESTAB 94
    CAIXA 7
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work8: |
    CLIEN b4
    ESTAB 94
    CAIXA 8
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
    ESTAB 94
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 94
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 94
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 94
    CAIXA 25
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 94
    CAIXA 26
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 94
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 094 100 LEBES001 44640 00000 RS0017979700100

zabbix-proxy:
  psk: a524f5ba1e0098cd68b46ad008690038051eec84e037ec78b6497de7d467c8de