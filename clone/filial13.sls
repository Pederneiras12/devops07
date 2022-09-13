filial: 13
dhcpd:
  subnets:
    172.17.13.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.13.1
      broadcast_address: 172.17.13.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.13.254
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
      fixed_address: 172.17.13.105
      hardware: ethernet 00:0F:EA:D7:40:73
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws005
        UNIREDE_LP_TER: ws005
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws006:
      fixed_address: 172.17.13.106
      hardware: ethernet 74:27:EA:77:88:F9
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws005
        UNIREDE_LP_TER: ws005
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv010:
      fixed_address: 172.17.13.110
      hardware: ethernet 94:DE:80:F1:6D:E8
      ltsp:
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: pv010
        UNIREDE_LP_TER: pv010
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv011:
      fixed_address: 172.17.13.111
      hardware: ethernet F4:4D:30:83:C0:90
      ltsp:
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv012:
      fixed_address: 172.17.13.112
      hardware: ethernet 50:B3:63:02:96:D8
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv013:
      fixed_address: 172.17.13.113
      hardware: ethernet 1C:69:7A:8C:BC:13
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR    
    pv014:
      fixed_address: 172.17.13.114
      hardware: ethernet FC:AA:14:F6:73:B8
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv015:
      fixed_address: 172.17.13.115
      hardware: ethernet 48:5B:39:F8:2C:0C
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR  
    p2k-pdv-030:
      fixed_address: 172.17.13.150
      hardware: ethernet 20:25:64:37:11:45
      filename: /p2k/pxelinux.0
    p2k-pdv-031:
      fixed_address: 172.17.13.151
      hardware: ethernet 74:27:EA:7A:4F:6B
    p2k-pdv-032:
      fixed_address: 172.17.13.152
      hardware: ethernet 74:27:EA:7A:4F:85
    p2k-pdv-033:
      fixed_address: 172.17.13.153
      hardware: ethernet 74:27:EA:7A:4F:06
    p2k-pdv-034:
      fixed_address: 172.17.13.154
      hardware: ethernet 74:27:EA:72:C9:03
    relogio-ponto:
      fixed_address: 172.17.13.210
      hardware: ethernet 00:50:C2:CF:56:94
    scanner-crediario:
      fixed_address: 172.17.13.240
      hardware: ethernet 30:05:5C:93:2D:54
    tesouraria:
      fixed_address: 172.17.13.201
      hardware: ethernet 80:EE:73:7C:41:E2
    telefonia:
      fixed_address: 172.17.13.200
      hardware: ethernet 80:EE:73:AF:32:CE
    cofre:
      fixed_address: 172.17.13.220
      hardware: ethernet 74:27:EA:7C:3C:A9
    catalogo:
      fixed_address: 172.17.13.223
      hardware: ethernet F4:8E:38:E5:89:5D
    Estudio13:
      fixed_address: 172.17.13.224
      hardware: ethernet 40:B0:34:93:41:3B
    notebook-matheus:
      fixed_address: 172.17.13.225
      hardware: ethernet 7C:B0:C2:01:14:63
    notebook-mario-infra:
      fixed_address: 172.17.13.226
      hardware: ethernet 80:86:f2:f6:2d:63
    Forti-AP01:
      fixed_address: 172.17.13.11
      hardware: ethernet 00:09:0f:f8:fd:20
    Forti-AP02:
      fixed_address: 172.17.13.12
      hardware: ethernet 00:09:0f:f9:28:e0
    Forti-AP03:
      fixed_address: 172.17.13.13
      hardware: ethernet 00:09:0f:f9:30:a0
    Forti-AP04:
      fixed_address: 172.17.13.14
      hardware: ethernet 00:09:0f:f9:1a:c0
    NB-CALL-AUD-6:
      fixed_address: 172.17.13.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.13.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.13.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.13.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.13.229
      hardware: ethernet F4:30:B9:A8:B7:ED
    Caixa_rapido_celular01:
      fixed_address: 172.17.13.50
      hardware: ethernet C0:6b:55:45:bf:15
    Caixa_rapido_celular02:
      fixed_address: 172.17.13.51
      hardware: ethernet 80:38:fb:61:54:54
    Caixa_rapido_celular03:
      fixed_address: 172.17.13.53
      hardware: ethernet 30:AB:6A:31:B5:A5
    Caixa_rapido_celular04:
      fixed_address: 172.17.13.54
      hardware: ethernet D8:cf:bf:c6:17:1c

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    NFCE YES
    ACAO-INDICA-AMIGOS YES
    VENDE-SEGURO SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
    VALIDA-CLIENTE-NOVO SIM
  work99: |
    CLIEN B4
    ESTAB 13 
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
    ESTAB 13
    CAIXA 98
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work11: |
    CLIEN B4
    ESTAB 13
    CAIXA 11
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work12: |
    CLIEN B4
    ESTAB 13
    CAIXA 12
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work13: |
    CLIEN B4
    ESTAB 13
    CAIXA 13
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work5: |
    CLIEN B4
    ESTAB 13
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
    ESTAB 13
    CAIXA 6
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 13
    CAIXA 10
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work14: |
    CLIEN B4
    ESTAB 13
    CAIXA 14
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work15: |
    CLIEN B4
    ESTAB 13
    CAIXA 15
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work: |
    CLIEN B4
    ESTAB 13
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p

cdlspc: 013 056 LEBES001 44640 00000 RS0017694500056

nfs:
  nfs_server: 172.17.13.254
  
P2K-POS:
  ip: 172.17.13.150
  num_loja: 0013
  pdv: 030
  gateway: 172.17.13.1
  rede: 172.17.255.0
  cnpj: 12345698901234
  estado: RS
  ip_sp: 172.17.13.254
 
zabbix-proxy:
  psk: aa0dab3c8c3b64176d1a0218adde2a02d5fa1b91d4c64a53b4780aa007853af9
  
sudoers:
  users:
      desliga:
            - 'ALL=NOPASSWD: /bin/bash, /srv/scripts/desliga.sh'