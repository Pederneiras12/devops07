filial: 96
dhcpd:
  subnets:
    172.17.96.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.96.1
      broadcast_address: 172.17.96.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.96.254
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
      fixed_address: 172.17.96.102
      hardware: ethernet 00:0F:EA:D6:A1:97
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
    ws005:
      fixed_address: 172.17.96.105
      hardware: ethernet 74:27:EA:72:C8:A6
      ltsp:
        SCREEN_04: ldm
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws006:
      fixed_address: 172.17.96.106
      hardware: ethernet 94:C6:91:48:67:43
      ltsp:
        SCREEN_04: ldm
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.96.120
      hardware: ethernet 00:0F:EA:D1:E0:DA
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.96.121
      hardware: ethernet 00:0D:61:D1:CB:23
      ltsp:
        SCREEN_04: ldm
        SCREEN_03: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.96.122
      hardware: ethernet 00:1F:C6:9D:A9:C0
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.96.123
      hardware: ethernet 74:27:EA:7A:4F:48
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.96.124
      hardware: ethernet 1C:69:7A:88:1F:E5
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.96.125
      hardware: ethernet 20:25:64:37:3B:A7
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0096-031:
      fixed_address: 172.17.96.131
      hardware: ethernet 10:88:0F:00:87:58
    P2K-PDV-0096-032:
      fixed_address: 172.17.96.132
      hardware: ethernet 10:88:0F:00:87:44
    P2K-PDV-0096-033:
      fixed_address: 172.17.96.133
      hardware: ethernet 00:1F:C6:9D:AF:C7
    scanner-crediario:
      fixed_address: 172.17.96.240
      hardware: ethernet 30:05:5C:E0:BB:25

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    NFCE YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 96
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
    ESTAB 96
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    ABRE-GAVETA SIM
    VENDA NAO
  work5: |
    CLIEN B4
    ESTAB 96
    CAIXA 5
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    ABRE-GAVETA SIM
    VENDA NAO
  work6: |
    CLIEN B4
    ESTAB 96
    CAIXA 6
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    ABRE-GAVETA SIM
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 96
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work21: |
    CLIEN B4
    ESTAB 96
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work22: |
    CLIEN B4
    ESTAB 96
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work23: |
    CLIEN B4
    ESTAB 96
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work24: |
    CLIEN B4
    ESTAB 96
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work25: |
    CLIEN B4
    ESTAB 96
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work98: |
    CLIEN B4
    ESTAB 96
    CAIXA 98
    RAMO  ?
    FISCAL
    PREVENDA YES
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work: |
    CLIEN B4
    ESTAB 96
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO

cdlspc: 096 102 LEBES001 44640 00000 RS00179911000102

zabbix-proxy:
  psk: e5484d59ba8a673e06b37036044fadb91a083e3bd3ddd9376bafa2dd54892a9b