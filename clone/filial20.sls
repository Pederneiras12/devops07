filial: 20
dhcpd:
  subnets:
    172.17.20.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.20.1
      broadcast_address: 172.17.20.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.20.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws005:
      fixed_address: 172.17.20.105
      hardware: ethernet 44:87:FC:B2:EC:33
      ltsp:
        SCREEN_02: ssh-adm 
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws006:
      fixed_address: 172.17.20.106
      hardware: ethernet 50:B3:63:02:97:84
      ltsp:
        SCREEN_02: ssh-adm 
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws004
        UNIREDE_LP_TER: ws004
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws007:
      fixed_address: 172.17.20.107
      hardware: ethernet 50:B3:63:02:9E:06
      ltsp:
        SCREEN_02: ssh-adm 
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws010:
      fixed_address: 172.17.20.110
      hardware: ethernet 74:27:EA:72:CA:73
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR    
    pv020:
      fixed_address: 172.17.20.120
      hardware: ethernet 94:C6:91:C5:38:9A
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.20.121
      hardware: ethernet FC:AA:14:F8:9C:8B
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv042:
      fixed_address: 172.17.20.142
      hardware: ethernet 00:1F:C6:9D:AB:1C
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv043:
      fixed_address: 172.17.20.143
      hardware: ethernet 00:0F:EA:D7:41:54
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv044:
      fixed_address: 172.17.20.144
      hardware: ethernet 00:1F:C6:9D:AA:4C
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv045:
      fixed_address: 172.17.20.145
      hardware: ethernet E0:69:95:3B:48:2A
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv046:
      fixed_address: 172.17.20.146
      hardware: ethernet 00:0F:EA:D2:09:DD
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv047:
      fixed_address: 172.17.20.147
      hardware: ethernet 94:C6:91:C5:3C:63
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv048:
      fixed_address: 172.17.20.148
      hardware: ethernet 00:1F:C6:9D:A9:D1
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv049:
      fixed_address: 172.17.20.149
      hardware: ethernet 00:24:8C:FA:AD:18
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv050:
      fixed_address: 172.17.20.150
      hardware: ethernet 00:0F:EA:D2:37:29
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv051:
      fixed_address: 172.17.20.151
      hardware: ethernet EC:A8:6B:B5:D6:6B
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv052:
      fixed_address: 172.17.20.152
      hardware: ethernet 94:C6:91:48:56:2B
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv053:
      fixed_address: 172.17.20.153
      hardware: ethernet 94:C6:91:C5:47:6C
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv054:
      fixed_address: 172.17.20.154
      hardware: ethernet 38:60:77:27:06:AF
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    P2K-PDV-0020-031:
      fixed_address: 172.17.20.131
      hardware: ethernet 00:1F:C6:9D:A6:32
      filename: /p2k/pxelinux.0
    P2K-PDV-0020-032:
      fixed_address: 172.17.20.132
      hardware: ethernet 20:25:64:37:12:C6
    P2K-PDV-0020-033:
      fixed_address: 172.17.20.133
      hardware: ethernet FC:AA:14:F8:99:79
    P2K-PDV-0020-034:
      fixed_address: 172.17.20.134
      hardware: ethernet 20:25:64:83:E6:A6
    P2K-PDV-0020-035:
      fixed_address: 172.17.20.135
      hardware: ethernet 00:1F:C6:9D:A2:6E
    P2K-PDV-0020-036:
      fixed_address: 172.17.20.136
      hardware: ethernet 20:25:64:37:18:CB
    P2K-PDV-0020-037:
      fixed_address: 172.17.20.137
      hardware: ethernet 74:27:EA:7A:4F:03
    P2K-PDV-0020-038:
      fixed_address: 172.17.20.138
      hardware: ethernet 50:B3:63:02:9F:B2
    P2K-PDV-0020-039:
      fixed_address: 172.17.20.139
      hardware: ethernet 50:B3:63:02:9E:F3
    P2K-PDV-0020-040:
      fixed_address: 172.17.20.140
      hardware: ethernet F4:4D:30:83:D1:0A
    P2K-PDV-0020-041:
      fixed_address: 172.17.20.141
      hardware: ethernet 50:B3:63:02:97:98
    relogio-ponto:
      fixed_address: 172.17.20.210
      hardware: ethernet FC:52:CE:80:70:4C
    scanner-crediario:
      fixed_address: 172.17.20.240
      hardware: ethernet 3C:2A:F4:04:08:4E
    telefonia:
      fixed_address: 172.17.20.200
      hardware: ethernet 00:00:00:00:00:43
    telefonia1:
      fixed_address: 172.17.20.252
      hardware: ethernet 00:00:00:00:00:44
    NB-CALL-AUD-6:
      fixed_address: 172.17.20.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.20.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.20.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.20.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.20.229
      hardware: ethernet F4:30:B9:A8:B7:ED      



admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA yes
    RECIBO-BARRAS yes
    NFCE YES
    ACAO-INDICA-AMIGOS NO
    USATROCAFONE NAO
    VENDE-SEGURO SIM
    NFCE-CONTIGENCIA SIM
    LIBERALIMITETOKEN SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work1: |
    CLIEN B4
    ESTAB 20
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO 
  work2: |
    CLIEN B4
    ESTAB 20
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work3: |
    CLIEN B4
    ESTAB 20
    CAIXA 3
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work5: |
    CLIEN B4
    ESTAB 20
    CAIXA 5
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work6: |
    CLIEN B4
    ESTAB 20
    CAIXA 6
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work7: |
    CLIEN B4
    ESTAB 20
    CAIXA 7
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work8: |
    CLIEN B4
    ESTAB 20
    CAIXA 8
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA  NAO
  work10: |
    CLIEN B4
    ESTAB 20
    CAIXA 10
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO    
  work20: |
    CLIEN B4
    ESTAB 20
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 20
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work42: |
    CLIEN B4
    ESTAB 20
    CAIXA 42
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work43: |
    CLIEN B4
    ESTAB 20
    CAIXA 43
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work44: |
    CLIEN B4
    ESTAB 20
    CAIXA 44
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work45: |
    CLIEN B4
    ESTAB 20
    CAIXA 45
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work46: |
    CLIEN B4
    ESTAB 20
    CAIXA 46
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work47: |
    CLIEN B4
    ESTAB 20
    CAIXA 47
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work48: |
    CLIEN B4
    ESTAB 20
    CAIXA 48
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work49: |
    CLIEN B4
    ESTAB 20
    CAIXA 49
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work50: |
    CLIEN B4
    ESTAB 20
    CAIXA 50
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work51: |
    CLIEN B4
    ESTAB 20
    CAIXA 51
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work52: |
    CLIEN B4
    ESTAB 20
    CAIXA 52
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work53: |
    CLIEN B4
    ESTAB 20
    CAIXA 53
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work54: |
    CLIEN B4
    ESTAB 20
    CAIXA 54
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 020 072 LEBES001 44640 00000 RS0017870600072

nfs:
  nfs_server: 172.17.20.254
  
P2K-POS:
  ip: 172.17.20.131
  num_loja: 0020
  pdv: 031
  gateway: 172.17.20.1
  rede: 172.17.255.0
  cnpj: 12345698901234
  estado: RS
  ip_sp: 172.17.20.254
  
zabbix-proxy:
  psk: 6bfb86a25ed6751ec4d861379bdfae46304d2f67b6f29aa6607c4a3fa1bba89c  