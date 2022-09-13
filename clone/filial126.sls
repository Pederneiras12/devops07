filial: 126
dhcpd:
  subnets:
    172.17.126.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.126.1
      broadcast_address: 172.17.126.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.126.254
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
      fixed_address: 172.17.126.102
      hardware: ethernet 00:1F:C6:9D:C1:4C
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
    ws004:
      fixed_address: 172.17.126.104
      hardware: ethernet 74:27:EA:72:C8:92
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    pv010:
      fixed_address: 172.17.126.110
      hardware: ethernet 90:E6:BA:A3:81:70
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv011:
      fixed_address: 172.17.126.111
      hardware: ethernet 38:60:77:26:FF:D8
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv012:
      fixed_address: 172.17.126.112
      hardware: ethernet 00:0F:EA:D6:E2:95
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv013:
      fixed_address: 172.17.126.113
      hardware: ethernet 00:27:0E:16:3E:5F
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv014:
      fixed_address: 172.17.126.114
      hardware: ethernet 74:27:EA:7A:4F:14
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    p2k:
      fixed_address: 172.17.119.150
      hardware: ethernet FC:AA:14:F8:96:BC
    scanner-crediario:
      fixed_address: 172.17.126.240
      hardware: ethernet 3C:2A:F4:21:C2:AC
    P2K-PDV-0126-031:
      fixed_address: 172.17.126.131
      hardware: ethernet 70:71:BC:4E:7E:97
    P2K-PDV-0126-032:
      fixed_address: 172.17.126.132
      hardware: ethernet 38:60:77:5C:76:78 

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA yes
    RECIBO-BARRAS yes
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
    LIBERALIMITETOKEN SIM
  work99: |
    CLIEN B4
    ESTAB 126
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
    ESTAB 126
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work4: |
    CLIEN B4
    ESTAB 126
    CAIXA 4
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 126
    CAIXA 10
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work11: |
    CLIEN B4
    ESTAB 126
    CAIXA 11
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work12: |
    CLIEN B4
    ESTAB 126
    CAIXA 12
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work13: |
    CLIEN B4
    ESTAB 126
    CAIXA 13
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work14: |
    CLIEN B4
    ESTAB 126
    CAIXA 14
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 126
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 126 137 LEBES001 44640 00000 RS0019236200137

zabbix-proxy:
  psk: de2ee8193159d049b318f506721f84c428d688f0cd1490329ba626d12916613d