filial: 46
dhcpd:
  subnets:
    172.17.46.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.46.1
      broadcast_address: 172.17.46.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.46.254
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
      fixed_address: 172.17.46.101
      hardware: ethernet 74:27:EA:7D:9A:44
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
    ws002:
      fixed_address: 172.17.46.102
      hardware: ethernet 00:0F:EA:23:87:F4
      ltsp:
        SCREEN_02: ssh-adm 
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001    
    ws003:
      fixed_address: 172.17.46.103
      hardware: ethernet 74:27:EA:72:D0:32
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    pv020:
      fixed_address: 172.17.46.120
      hardware: ethernet F4:4D:30:8C:F9:A8
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.46.121
      hardware: ethernet BC:AE:C5:9B:FA:11
      ltsp:
        SCREEN_03: ssh-adm      
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.46.122
      hardware: ethernet F4:4D:30:8C:F9:55
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.46.123
      hardware: ethernet 74:27:EA:72:C8:87
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0046-031:
      fixed_address: 172.17.46.131
      hardware: ethernet C4:6E:1F:00:2D:6D
    P2K-PDV-0046-032:
      fixed_address: 172.17.46.132
      hardware: ethernet 00:1F:C6:9D:AB:19
    P2K-PDV-0046-033:
      fixed_address: 172.17.46.133
      hardware: ethernet C4:6E:1F:00:2D:33
    P2K-PDV-0046-034:
      fixed_address: 172.17.46.134
      hardware: ethernet 00:1A:4D:A3:51:5E
    P2K-AV-0046-062:
      fixed_address: 172.17.46.162
      hardware: ethernet F4:4D:30:8C:F9:55
    scanner-crediario:
      fixed_address: 172.17.46.240
      hardware: ethernet 30:05:5C:AC:10:76

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 46
    CAIXA 99
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work1: |
    CLIEN B4
    ESTAB 46
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work2: |
    CLIEN B4
    ESTAB 46
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    ABRE-GAVETA SIM
    COMECF NAO
    VENDA NAO
  work3: |
    CLIEN B4
    ESTAB 46
    CAIXA 3
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    ABRE-GAVETA SIM
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 46
    CAIXA 20
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 46
    CAIXA 21
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 46
    CAIXA 22
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 46
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 46
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO
    PAGAMENTO NAO

cdlspc: 046 014 LEBES001 44640 00000 RS0017559200014

zabbix-proxy:
  psk: 67b746fd546ec2583c4880d8bf8e5f7dd7492c8b2f38c308319fa7c132b02cc8