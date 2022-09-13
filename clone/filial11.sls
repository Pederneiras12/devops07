filial: 11
dhcpd:
  subnets:
    172.17.11.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.11.1
      broadcast_address: 172.17.11.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.11.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws002:
      fixed_address: 172.17.11.102
      hardware: ethernet 00:0F:EA:D2:0A:2E
      ltsp:
        SCREEN_04: ldm
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
    ws006:
      fixed_address: 172.17.11.106
      hardware: ethernet 00:0F:EA:D6:DE:DD
      ltsp:
        SCREEN_04: ldm
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws005
        UNIREDE_LP_TER: ws005
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.11.120
      hardware: ethernet 00:0F:EA:D6:A1:CB
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.11.121
      hardware: ethernet E0:69:95:56:AB:57
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.11.122
      hardware: ethernet E0:69:95:3B:4F:91
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001        
    pv023:
      fixed_address: 172.17.11.123
      hardware: ethernet 00:1F:C6:9D:B0:4E
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    scanner-crediario:
      fixed_address: 172.17.11.240
      hardware: ethernet 3C:2A:F4:21:A9:82
    P2K-PDV-0011-031:
      fixed_address: 172.17.11.131
      hardware: ethernet 70:71:BC:4E:81:68
    P2K-PDV-0011-032:
      fixed_address: 172.17.11.132
      hardware: ethernet 00:1F:C6:9D:B8:A4
    P2K-PDV-0011-033:
      fixed_address: 172.17.11.133
      hardware: ethernet 00:1F:C6:FF:77:D5

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    RECIBO-BARRAS YES
    NUMERACAOAUTOMATICA YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE YES
    LIBERALIMITETOKEN SIM
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 11
    CAIXA 99
    RAMO  ?
    FISCAL 
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work2: |
    CLIEN B4
    ESTAB 11
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work6: |
    CLIEN B4
    ESTAB 11
    CAIXA 6
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 11
    CAIXA 20
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 11
    CAIXA 21
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 11
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 11
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 11
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO
    PAGAMENTO NAO

cdlspc: 011 12 LEBES001 44640 00000 RS0017559000012

zabbix-proxy:
  psk: 29092029b5e66592d81161077395f230c2a3882e46e2fcafb54e15b6c2d68b18