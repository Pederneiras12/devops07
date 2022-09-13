filial: 87
dhcpd:
  subnets:
    172.17.87.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.87.1
      broadcast_address: 172.17.87.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.87.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws004:
      fixed_address: 172.17.87.104
      hardware: ethernet 50:B3:63:02:96:D9
      ltsp:
        PRINTER_0_DEVICE: /dev/usb/lp0
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws004
        UNIREDE_LP_TER: ws004
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.87.120
      hardware: ethernet 00:1C:C0:67:BD:B2
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.87.121
      hardware: ethernet 00:0F:EA:D6:A7:49
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.87.122
      hardware: ethernet 1C:69:7A:83:87:8E
      SCREEN_03: ssh-adm
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.87.123
      hardware: ethernet 50:B3:63:02:99:47
      ltsp:
        SCREEN_04: ldm
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv024:
      fixed_address: 172.17.87.124
      hardware: ethernet F4:4D:30:8C:FB:0D
      ltsp:
        UNIREDE_LP_MAT: ws001
    scanner-crediario:
      fixed_address: 172.17.87.240
      hardware: ethernet 3C:2A:F4:21:C2:3C
    P2K-PDV-0087-031:
      fixed_address: 172.17.87.131
      hardware: ethernet 00:22:15:C1:25:B7 
    P2K-PDV-0087-032:
      fixed_address: 172.17.87.132
      hardware: ethernet 70:5A:0F:69:07:26
    P2K-PDV-0087-033:
      fixed_address: 172.17.87.133
      hardware: ethernet 70:71:BC:4E:70:EF

admcom:
  work98: |
    CLIEN B4
    ESTAB 87
    CAIXA 98
    RAMO  ?
    FISCAL
    PREVENDA YES
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN NAO
    NFCE NO
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
    NFCE-CONTIGENCIA SIM
  work4: |
    CLIEN B4
    ESTAB 87
    CAIXA 4
    RAMO  ?
    FISCAL 
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 87
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 87
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 87
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 87
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 87
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 087 90 LEBES001 44640 00000 RS0017958600090

zabbix-proxy:
  psk: 4f892859f1a25b18f7c4b907822ac44a46b88b77c83f850a0bd0eb795c438b5a