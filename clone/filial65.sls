filial: 65
dhcpd:
  subnets:
    172.17.65.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.65.1
      broadcast_address: 172.17.65.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.65.254
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
      fixed_address: 172.17.65.104
      hardware: ethernet F4:4D:30:83:F4:03
      ltsp:
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws004
        UNIREDE_LP_TER: ws004
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws007:
      fixed_address: 172.17.65.107
      hardware: ethernet 00:0F:EA:D1:E1:4E
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws003
        UNIREDE_LP_TER: ws003
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv018:
      fixed_address: 172.17.65.118
      hardware: ethernet 94:C6:91:48:51:87
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv019:
      fixed_address: 172.17.65.119
      hardware: ethernet 94:C6:91:48:54:9A
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv020:
      fixed_address: 172.17.65.120
      hardware: ethernet 74:27:EA:7A:4C:77
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.65.121
      hardware: ethernet 70:71:BC:4E:70:ED
      ltsp:
        SCREEN_04: ldm      
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.65.123
      hardware: ethernet 74:27:EA:7A:4F:E1
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.65.124
      hardware: ethernet 00:1F:C6:9D:AE:36
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.65.125
      hardware: ethernet 00:1F:C6:9D:A6:1D
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.17.65.126
      hardware: ethernet 00:1F:C6:9D:BB:21
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv027:
      fixed_address: 172.17.65.127
      hardware: ethernet 00:0F:EA:D2:0A:4A
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv028:
      fixed_address: 172.17.65.128
      hardware: ethernet FC:AA:14:F8:97:B4
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv029:
      fixed_address: 172.17.65.129
      hardware: ethernet 94:C6:91:48:51:F4
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv030:
      fixed_address: 172.17.65.130
      hardware: ethernet 34:64:A9:09:ED:5D
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0065-031:
      fixed_address: 172.17.65.131
      hardware: ethernet 38:60:77:69:F9:2C
    P2K-PDV-0065-032:
      fixed_address: 172.17.65.132
      hardware: ethernet 00:E0:53:0B:43:7A
    P2K-PDV-0065-033:
      fixed_address: 172.17.65.133
      hardware: ethernet 00:24:1D:F8:F8:03
    P2K-PDV-0065-034:
      fixed_address: 172.17.65.134
      hardware: ethernet 90:E6:BA:9B:51:6E
    P2K-PDV-0065-035:
      fixed_address: 172.17.65.135
      hardware: ethernet 00:1A:4D:A1:E5:00
    P2K-PDV-0065-036:
      fixed_address: 172.17.65.136
      hardware: ethernet 00:08:54:1B:A7:CE
    P2K-PDV-0065-037:
      fixed_address: 172.17.65.137
      hardware: ethernet E0:69:95:3B:49:CA
    P2K-PDV-0065-038:
      fixed_address: 172.17.65.138
      hardware: ethernet 00:1F:C6:FF:78:41
    P2K-PDV-0065-039:
      fixed_address: 172.17.65.139
      hardware: ethernet 94:C6:91:4B:EA:58
    scanner-crediario:
      fixed_address: 172.17.65.240
      hardware: ethernet 3C:2A:F4:21:A8:96
      
admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    RECIBO-BARRAS YES
    NUMERACAOAUTOMATICA YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
    NFCE-CONTIGENCIA NAO
    LIBERA-RENOVACAO-DIVIDA NAO
  work4: |
    CLIEN B4
    ESTAB 65
    CAIXA 4
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work7: |
    CLIEN B4
    ESTAB 65
    CAIXA 7
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work18: |
    CLIEN B4
    ESTAB 65
    CAIXA 18
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work19: |
    CLIEN B4
    ESTAB 65
    CAIXA 19
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work20: |
    CLIEN B4
    ESTAB 65
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 65
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 65
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 65
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 65
    CAIXA 25
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 65
    CAIXA 26
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work27: |
    CLIEN B4
    ESTAB 65
    CAIXA 27
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work28: |
    CLIEN B4
    ESTAB 65
    CAIXA 28
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work29: |
    CLIEN B4
    ESTAB 65
    CAIXA 29
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work30: |
    CLIEN B4
    ESTAB 65
    CAIXA 30
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 65
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    CARNE LOCAL
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 065 42 LEBES001 44640 00000 RS0017638000042

zabbix-proxy:
  psk: d767ddde2862d9477dd09f3d48d53d1abdc28017b325817f6a17fc5079b5fd25