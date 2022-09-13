filial: 30
dhcpd:
  subnets:
    172.17.30.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.30.1
      broadcast_address: 172.17.30.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.30.254
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
      fixed_address: 172.17.30.101
      hardware: ethernet 74:27:EA:7A:54:1C
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws007
        UNIREDE_LP_TER: ws007
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws007:
      fixed_address: 172.17.30.107
      hardware: ethernet 00:1C:25:49:2F:AF
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws007
        UNIREDE_LP_TER: ws007
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.30.120
      hardware: ethernet 94:C6:91:48:4E:D7
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.30.121
      hardware: ethernet 00:24:8C:FA:A3:7D
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.30.122
      hardware: ethernet 00:0F:EA:D7:40:1F
      ltsp:
        SCREEN_03: ssh-adm      
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.30.123
      hardware: ethernet 70:71:BC:52:3D:C8
      ltsp:
        SCREEN_03: ssh-adm 
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.30.124
      hardware: ethernet 00:0F:EA:D7:2B:F6
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv025:
      fixed_address: 172.17.30.125
      hardware: ethernet 00:24:8C:FA:AD:FA
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    p2k:
      fixed_address: 172.17.30.150
      hardware: ethernet FC:AA:14:F8:96:BC
    scanner-crediario:
      fixed_address: 172.17.30.240
      hardware: ethernet 3C:2A:F4:21:C2:58
    P2K-PDV-0030-031:
      fixed_address: 172.17.30.131
      hardware: ethernet 00:E0:52:BE:C6:27
    P2K-PDV-0030-032:
      fixed_address: 172.17.30.132
      hardware: ethernet E0:69:95:3B:45:B3
    P2K-PDV-0030-033:
      fixed_address: 172.17.30.133
      hardware: ethernet 38:60:77:5C:6C:62
    P2K-PDV-0030-034:
      fixed_address: 172.17.30.134
      hardware: ethernet FC:AA:14:F6:78:75
    P2K-PDV-0030-035:
      fixed_address: 172.17.30.135
      hardware: ethernet E0:69:95:3B:46:90
    NB-CALL-AUD-6:
      fixed_address: 172.17.30.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.30.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.30.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.30.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.30.229
      hardware: ethernet F4:30:B9:A8:B7:ED      

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work1: |
    CLIEN B4
    ESTAB 30
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work7: |
    CLIEN B4
    ESTAB 30
    CAIXA 7
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
    ESTAB 30
    CAIXA 20
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 30
    CAIXA 21
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 30
    CAIXA 22
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 30
    CAIXA 23
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 30
    CAIXA 24
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 30
    CAIXA 25
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 30
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 030 036 LEBES001 44640 00000 RS0017621200036

zabbix-proxy:
  psk: 18547181027329030483f90a39630d80e7d6e81c971b6429992df16fd4e12621