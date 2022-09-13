filial: 160
dhcpd:
  subnets:
    172.17.160.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.160.1
      broadcast_address: 172.17.160.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.160.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    p2K-pdv-160-031:
      fixed_address: 172.17.160.131
      hardware: ethernet 20:25:64:37:0A:9B
      filename: /p2k/pxelinux.0
    p2K-pdv-160-032:
      fixed_address: 172.17.160.132
      hardware: ethernet 20:25:64:37:52:44
      filename: /p2k/pxelinux.0
    p2K-pdv-160-033:
      fixed_address: 172.17.160.133
      hardware: ethernet 20:25:64:37:3A:32
      filename: /p2k/pxelinux.0
    p2K-pdv-160-034:
      fixed_address: 172.17.160.134
      hardware: ethernet F4:4D:30:83:D1:70
      filename: /p2k/pxelinux.0
    p2K-pdv-160-035:
      fixed_address: 172.17.160.135
      hardware: ethernet 20:25:64:37:4F:80
      filename: /p2k/pxelinux.0
    p2K-pdv-160-036:
      fixed_address: 172.17.160.136
      hardware: ethernet 20:25:64:37:3B:A7
      filename: /p2k/pxelinux.0
    p2K-pdv-160-037:
      fixed_address: 172.17.160.137
      hardware: ethernet 20:25:64:37:3A:AF
      filename: /p2k/pxelinux.0
    p2K-pdv-160-038:
      fixed_address: 172.17.160.138
      hardware: ethernet 20:25:64:37:3A:B6
      filename: /p2k/pxelinux.0
    p2K-pdv-160-039:
      fixed_address: 172.17.160.139
      hardware: ethernet 94:DE:80:F6:38:76
      filename: /p2k/pxelinux.0
    p2K-pdv-160-040:
      fixed_address: 172.17.160.140
      hardware: ethernet 6C:F0:49:FC:60:F1
      filename: /p2k/pxelinux.0
    p2K-pdv-160-041:
      fixed_address: 172.17.160.141
      hardware: ethernet F4:4D:30:8C:FA:D0
      filename: /p2k/pxelinux.0
    p2K-pdv-160-042:
      fixed_address: 172.17.160.142
      hardware: ethernet 90:E6:BA:9B:53:7E
      filename: /p2k/pxelinux.0
    p2K-pdv-160-043:
      fixed_address: 172.17.160.143
      hardware: ethernet 00:00:00:00:4F:6D
    ws005:
      fixed_address: 172.17.160.105
      hardware: ethernet 20:25:64:37:0B:FA
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
    ws007:
      fixed_address: 172.17.160.107
      hardware: ethernet 20:25:64:37:35:2B
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
    ws008:
      fixed_address: 172.17.160.108
      hardware: ethernet 20:25:64:37:50:9D
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws008
        UNIREDE_LP_TER: ws008
    pv061:
      fixed_address: 172.17.160.161
      hardware: ethernet 70:5A:0F:69:F6:BB
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv062:
      fixed_address: 172.17.160.162
      hardware: ethernet 70:5A:0F:69:17:84
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv063:
      fixed_address: 172.17.160.163
      hardware: ethernet 74:27:EA:7A:4F:51
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv064:
      fixed_address: 172.17.160.164
      hardware: ethernet 70:5A:0F:69:0D:BB
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv065:
      fixed_address: 172.17.160.165
      hardware: ethernet 70:5A:0F:69:07:78
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv066:
      fixed_address: 172.17.160.166
      hardware: ethernet 70:5A:0F:69:F6:49
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv067:
      fixed_address: 172.17.160.167
      hardware: ethernet 70:5A:0F:69:07:66
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv068:
      fixed_address: 172.17.160.168
      hardware: ethernet 70:5A:0F:69:07:34
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv069:
      fixed_address: 172.17.160.169
      hardware: ethernet 70:5A:0F:69:07:47
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv070:
      fixed_address: 172.17.160.170
      hardware: ethernet 74:27:EA:7A:4F:6C
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv071:
      fixed_address: 172.17.160.171
      hardware: ethernet 70:5A:0F:69:F6:FD
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv072:
      fixed_address: 172.17.160.172
      hardware: ethernet 70:5A:0F:69:F6:7B
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv073:
      fixed_address: 172.17.160.173
      hardware: ethernet 70:5A:0F:69:07:39
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv074:
      fixed_address: 172.17.160.174
      hardware: ethernet 74:27:EA:7A:4F:6D
      ltsp:
        SCREEN_03: ssh-adm      
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR      
        UNIREDE_LP_MAT: ws001
    pv075:
      fixed_address: 172.17.160.175
      hardware: ethernet 48:5B:39:F8:7B:96
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv076:
      fixed_address: 172.17.160.176
      hardware: ethernet 70:5A:0F:69:07:74
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv077:
      fixed_address: 172.17.160.177
      hardware: ethernet 70:5A:0F:69:07:EC
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv078:
      fixed_address: 172.17.160.178
      hardware: ethernet 74:27:EA:7A:4F:4C
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv085:
      fixed_address: 172.17.160.185
      hardware: ethernet 00:0F:EA:D1:BD:3D
      ltsp:
        SCREEN_03: ssh-adm      
        UNIREDE_LP_MAT: ws001  
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    cofre3:
      fixed_address: 172.17.160.120
      hardware: ethernet 74:27:EA:7C:40:A4
    ponto1:
      fixed_address: 172.17.160.210
      hardware: ethernet FC:52:CE:80:8D:A7
    ponto2:
      fixed_address: 172.17.160.211
      hardware: ethernet FC:52:CE:80:8D:6F
    ponto3:
      fixed_address: 172.17.160.212
      hardware: ethernet FC:52:CE:80:8D:63
    catalogo2:
      fixed_address: 172.17.160.224
      hardware: ethernet 48:4D:7E:A1:F8:4F
    catalogo3:
      fixed_address: 172.17.160.225
      hardware: ethernet 48:4D:7E:A1:F4:F0
    telefonia:
      fixed_address: 172.17.160.200
      hardware: ethernet 80:EE:73:C3:AC:92
    central_telefonica:
      fixed_address: 172.17.160.245
      hardware: ethernet 40:BF:17:5F:18:1C
    WIFI-FL160-1-1:
      fixed_address: 172.17.160.11
      hardware: ethernet 0C:8D:DB:93:4C:D0
    WIFI-FL160-1-2:
      fixed_address: 172.17.160.12
      hardware: ethernet 0C:8D:DB:93:B2:CF
    WIFI-FL160-1-3:
      fixed_address: 172.17.160.13
      hardware: ethernet 0C:8D:DB:93:A5:8D
    WIFI-FL160-2-1:
      fixed_address: 172.17.160.14
      hardware: ethernet 0C:8D:DB:93:96:49
    WIFI-FL160-2-2:
      fixed_address: 172.17.160.15
      hardware: ethernet 0C:8D:DB:93:4D:17
    WIFI-FL160-3-1:
      fixed_address: 172.17.160.16
      hardware: ethernet 0C:8D:DB:93:95:3C
    WIFI-FL160-3-2:
      fixed_address: 172.17.160.17
      hardware: ethernet 0C:8D:DB:93:A4:E4
    WIFI-FL160-7-1:
      fixed_address: 172.17.160.18
      hardware: ethernet 0C:8D:DB:93:4D:FC
    WIFI-FL160-7-2:
      fixed_address: 172.17.160.19
      hardware: ethernet 0C:8D:DB:93:B4:12
    TABLET_AV_TESTE:
      fixed_address: 172.17.160.9
      hardware: ethernet 44:2C:05:BF:30:C2
    NOTE_MATHEUS:
      fixed_address: 172.17.160.10
      hardware: ethernet 7C:B0:C2:01:14:64
    Caixa_rapido_celular02:
      fixed_address: 172.17.160.50
      hardware: ethernet C0:6B:55:45:BF:15
    Caixa_rapido_celular01:
      fixed_address: 172.17.160.51
      hardware: ethernet C0:6B:55:88:F5:9C
    Caixa_rapido_celular03:
      fixed_address: 172.17.160.53
      hardware: ethernet C0:6B:55:88:F0:AA

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
    ESTAB 160
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
    ESTAB 160
    CAIXA 98
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work5: |
    CLIEN B4
    ESTAB 160
    CAIXA 5
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    COMECF NAO
    VENDA NAO
    PAGAMENTO NAO
  work7: |
    CLIEN B4
    ESTAB 160
    CAIXA 7
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    COMECF NAO
    VENDA NAO
    PAGAMENTO NAO
  work8: |
    CLIEN B4
    ESTAB 160
    CAIXA 8
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work61: |
    CLIEN B4
    ESTAB 160
    CAIXA 61
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work62: |
    CLIEN B4
    ESTAB 160
    CAIXA 62
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work63: |
    CLIEN B4
    ESTAB 160
    CAIXA 63
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work64: |
    CLIEN B4
    ESTAB 160
    CAIXA 64
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work65: |
    CLIEN B4
    ESTAB 160
    CAIXA 65
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work66: |
    CLIEN B4
    ESTAB 160
    CAIXA 66
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work67: |
    CLIEN B4
    ESTAB 160
    CAIXA 67
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work68: |
    CLIEN B4
    ESTAB 160
    CAIXA 68
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work69: |
    CLIEN B4
    ESTAB 160
    CAIXA 69
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work70: |
    CLIEN B4
    ESTAB 160
    CAIXA 70
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work71: |
    CLIEN B4
    ESTAB 160
    CAIXA 71
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work72: |
    CLIEN B4
    ESTAB 160
    CAIXA 72
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work73: |
    CLIEN B4
    ESTAB 160
    CAIXA 73
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work74: |
    CLIEN B4
    ESTAB 160
    CAIXA 74
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work75: |
    CLIEN B4
    ESTAB 160
    CAIXA 75
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work77: |
    CLIEN B4
    ESTAB 160
    CAIXA 77
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work78: |
    CLIEN B4
    ESTAB 160
    CAIXA 78
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work85: |
    CLIEN B4
    ESTAB 160
    CAIXA 85
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310    

cdlspc: 160 173 LEBES001 44640 00000 RS0011609100173

nfs:
  nfs_server: 172.17.160.254
  
P2K-POS:
  ip: 172.17.160.133
  num_loja: 0160
  pdv: 033
  gateway: 172.17.160.1
  rede: 172.17.255.0
  cnpj: 12345698901234
  estado: RS
  ip_sp: 172.17.160.254
  
zabbix-proxy:
  psk: 02d829073d3fab5046ada39c38c5b50d91e21c22c0834a96ec55a4c15e0c1d08  