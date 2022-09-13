filial: 170
dhcpd:
  subnets:
    172.17.170.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.170.1
      broadcast_address: 172.17.170.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.170.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    p2K-pdv-170-031:
      fixed_address: 172.17.170.131
      hardware: ethernet 94:C6:91:43:B7:5A
      filename: /p2k/pxelinux.0
    p2K-pdv-170-032:
      fixed_address: 172.17.170.132
      hardware: ethernet 94:C6:91:43:B2:95
      filename: /p2k/pxelinux.0
    p2K-pdv-170-033:
      fixed_address: 172.17.170.133
      hardware: ethernet 50:B3:63:02:A9:8C
      filename: /p2k/pxelinux.0
    p2K-pdv-170-034:
      fixed_address: 172.17.170.134
      hardware: ethernet 94:C6:91:CE:62:2D
      filename: /p2k/pxelinux.0
    p2K-pdv-170-035:
      fixed_address: 172.17.170.135
      hardware: ethernet 50:B3:63:02:99:40
      filename: /p2k/pxelinux.0
    p2K-pdv-170-036:
      fixed_address: 172.17.170.136
      hardware: ethernet 94:C6:91:43:AF:CE
      filename: /p2k/pxelinux.0
    p2K-pdv-170-037:
      fixed_address: 172.17.170.137
      hardware: ethernet 50:B3:63:02:AA:15
      filename: /p2k/pxelinux.0
    p2K-pdv-170-038:
      fixed_address: 172.17.170.138
      hardware: ethernet 94:C6:91:43:B2:8C
      filename: /p2k/pxelinux.0
    p2K-pdv-170-040:
      fixed_address: 172.17.170.140
      hardware: ethernet E0:69:95:56:AF:1E
      filename: /p2k/pxelinux.0
    p2K-pdv-170-041:
      fixed_address: 172.17.170.141
      hardware: ethernet 74:27:EA:7A:4F:6B
      filename: /p2k/pxelinux.0
    p2K-pdv-170-042:
      fixed_address: 172.17.170.142
      hardware: ethernet 90:E6:BA:9B:4F:02
      filename: /p2k/pxelinux.0
    p2K-pdv-170-043:
      fixed_address: 172.17.170.143
      hardware: ethernet 00:27:0E:2E:FF:80
      filename: /p2k/pxelinux.0
    p2K-pdv-170-044:
      fixed_address: 172.17.170.144
      hardware: ethernet 50:B3:63:02:98:D9
      filename: /p2k/pxelinux.0
    p2K-pdv-170-045:
      fixed_address: 172.17.170.145
      hardware: ethernet 50:B3:63:02:99:47
      filename: /p2k/pxelinux.0
    p2K-pdv-170-046:
      fixed_address: 172.17.170.146
      hardware: ethernet 00:00:00:00:00:10
      filename: /p2k/pxelinux.0
    p2K-pdv-170-047:
      fixed_address: 172.17.170.147
      hardware: ethernet 00:1F:C6:FF:77:E3
      filename: /p2k/pxelinux.0
    p2K-pdv-170-048:
      fixed_address: 172.17.170.148
      hardware: ethernet E0:69:95:3B:4B:FA
      filename: /p2k/pxelinux.0
    p2K-pdv-170-049:
      fixed_address: 172.17.170.149
      hardware: ethernet F4:4D:30:83:F3:B2
      filename: /p2k/pxelinux.0
    p2K-pdv-170-050:
      fixed_address: 172.17.170.150
      hardware: ethernet 00:00:00:00:00:14
      filename: /p2k/pxelinux.0  
    ws001:
      fixed_address: 172.17.170.101
      hardware: ethernet 84:A9:3E:F1:8D:29
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
      fixed_address: 172.17.170.102
      hardware: ethernet 84:A9:3E:F1:8D:94
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR    
    pv011:
      fixed_address: 172.17.170.111
      hardware: ethernet 84:A9:3E:F1:8D:36
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv012:
      fixed_address: 172.17.170.112
      hardware: ethernet 50:B3:63:02:9F:AF
      ltsp:
        ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv013:
      fixed_address: 172.17.170.113
      hardware: ethernet F4:4D:30:8C:E9:96
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv014:
      fixed_address: 172.17.170.114
      hardware: ethernet 84:A9:3E:F1:8D:6B
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv015:
      fixed_address: 172.17.170.115
      hardware: ethernet 50:B3:63:02:99:44
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv016:
      fixed_address: 172.17.170.116
      hardware: ethernet 94:C6:91:CE:63:12
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv017:
      fixed_address: 172.17.170.117
      hardware: ethernet E4:E7:49:FB:51:7C
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv018:
      fixed_address: 172.17.170.118
      hardware: ethernet E4:E7:49:FB:61:46
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv019:
      fixed_address: 172.17.170.119
      hardware: ethernet E4:E7:49:FB:51:7D
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv020:
      fixed_address: 172.17.170.120
      hardware: ethernet E4:E7:49:FB:31:FD
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.170.121
      hardware: ethernet 84:A9:3E:F1:FF:0D
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.170.122
      hardware: ethernet FC:AA:14:F8:9E:45
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.170.123
      hardware: ethernet 00:0F:EA:23:23:8B
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.170.124
      hardware: ethernet 00:0F:EA:D6:E1:B4
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.170.125
      hardware: ethernet 84:A9:3E:F1:7D:FF
      ltsp:
        UNIREDE_LP_MAT: ws001
    cofre1:
      fixed_address: 172.17.170.130
      hardware: ethernet 00:00:00:00:00:35
    ponto1:
      fixed_address: 172.17.170.210
      hardware: ethernet FC:52:CE:82:62:A5
    ponto2:
      fixed_address: 172.17.170.211
      hardware: ethernet 00:00:00:00:00:37
    catalogo1:
      fixed_address: 172.17.170.231
      hardware: ethernet 00:00:00:00:00:39
    catalogo2:
      fixed_address: 172.17.170.232
      hardware: ethernet 00:00:00:00:00:40
    catalogo3:
      fixed_address: 172.17.170.233
      hardware: ethernet 00:00:00:00:00:41
    catalogo4:
      fixed_address: 172.17.170.234
      hardware: ethernet 00:00:00:00:00:42  
    telefonia:
      fixed_address: 172.17.170.200
      hardware: ethernet 00:00:00:00:00:43
    Switch_01:
      fixed_address: 172.17.170.2
      hardware: ethernet 6C:5E:3B:CA:80:43
    Switch_02:
      fixed_address: 172.17.170.3
      hardware: ethernet 6C:5E:3B:CA:B5:D8
    WIFI-FL170-1-1:
      fixed_address: 172.17.170.11
      hardware: ethernet 68:3A:1E:32:A5:7F
    WIFI-FL170-1-2:
      fixed_address: 172.17.170.12
      hardware: ethernet 68:3A:1E:32:A7:98
    WIFI-FL170-2-1:
      fixed_address: 172.17.170.13
      hardware: ethernet 68:3A:1E:32:AA:93
    WIFI-FL170-2-2:
      fixed_address: 172.17.170.14
      hardware: ethernet 68:3A:1E:32:AA:A7
    WIFI-FL170-2-3:
      fixed_address: 172.17.170.15
      hardware: ethernet 68:3A:1E:32:A0:8D
    CONTROLE_ACESSO:
      fixed_address: 172.17.170.16
      hardware: ethernet FC:52:CE:82:46:06
    Caixa_rapido_teste:
      fixed_address: 172.17.170.50
      hardware: ethernet 30:AB:6A:31:B5:A5
    Caixa_rapido_teste3:
      fixed_address: 172.17.170.82
      hardware: ethernet 80:38:FB:61:54:54
    Note-Marlos:
      fixed_address: 172.17.170.80
      hardware: ethernet 44:1C:A8:BF:C2:1D
    Caixa_rapido_teste4:
      fixed_address: 172.17.170.53
      hardware: ethernet C0:6B:55:88:F0:AD  
      
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
    ESTAB 170
    CAIXA 99
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work98: |
    CLIEN B4
    ESTAB 170
    CAIXA 98
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
    PREVENDA YES
  work1: |
    CLIEN B4
    ESTAB 170
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
    ESTAB 170
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work11: |
    CLIEN B4
    ESTAB 170
    CAIXA 11
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work12: |
    CLIEN B4
    ESTAB 170
    CAIXA 12
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work13: |
    CLIEN B4
    ESTAB 170
    CAIXA 13
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work14: |
    CLIEN B4
    ESTAB 170
    CAIXA 14
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work15: |
    CLIEN B4
    ESTAB 170
    CAIXA 15
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work16: |
    CLIEN B4
    ESTAB 170
    CAIXA 16
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work17: |
    CLIEN B4
    ESTAB 170
    CAIXA 17
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work18: |
    CLIEN B4
    ESTAB 170
    CAIXA 18
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work19: |
    CLIEN B4
    ESTAB 170
    CAIXA 19
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work20: |
    CLIEN B4
    ESTAB 170
    CAIXA 20
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work21: |
    CLIEN B4
    ESTAB 170
    CAIXA 21
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work22: |
    CLIEN B4
    ESTAB 170
    CAIXA 22
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work23: |
    CLIEN B4
    ESTAB 170
    CAIXA 23
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work24: |
    CLIEN B4
    ESTAB 170
    CAIXA 24
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
    
cdlspc: 170 182 LEBES001 44640 00000 RS0018846000182

nfs:
  nfs_server: 172.17.170.254

P2K-POS:
  ip: 172.17.170.134
  num_loja: 0170
  pdv: 034
  gateway: 172.17.170.1
  rede: 172.17.255.0
  cnpj: 96662168019584
  estado: RS
  ip_sp: 172.17.170.254
  
zabbix-proxy:
  psk: 0398f4b60932cd260d72bb53aaa8d8a48f2ccd0961aeee4facf6dd603dac1c62