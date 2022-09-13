filial: 112
dhcpd:
  subnets:
    172.17.112.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.112.1
      broadcast_address: 172.17.112.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.112.254
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
      fixed_address: 172.17.112.101
      hardware: ethernet E0:69:95:56:AC:DA
      ltsp:
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        SCREEN_02: ssh-adm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    ws005:
      fixed_address: 172.17.112.105
      hardware: ethernet FC:AA:14:F8:99:85
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    pv020:
      fixed_address: 172.17.112.120
      hardware: ethernet FC:AA:14:F8:97:5F
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.112.121
      hardware: ethernet 70:85:C2:35:08:03
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.112.122
      hardware: ethernet E0:69:95:56:AB:67
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.112.123
      hardware: ethernet E0:69:95:56:B1:60
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.112.124
      hardware: ethernet E0:69:95:56:98:10
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.112.125
      hardware: ethernet E0:69:95:3B:50:27
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0112-031:
      fixed_address: 172.17.112.131
      hardware: ethernet 00:1F:C6:9D:A8:2F
    P2K-PDV-0112-032:
      fixed_address: 172.17.112.132
      hardware: ethernet 10:88:0F:00:87:4D
    P2K-PDV-0112-033:
      fixed_address: 172.17.112.133
      hardware: ethernet 90:E6:BA:9B:50:F4      
    scanner-crediario:
      fixed_address: 172.17.112.240
      hardware: ethernet 30:05:5C:CF:FC:15
    NB-CALL-AUD-6:
      fixed_address: 172.17.112.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.112.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.112.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.112.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.112.229
      hardware: ethernet F4:30:B9:A8:B7:ED

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS no
    NFCE YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 112
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
    ESTAB 112
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work5: |
    CLIEN B4
    ESTAB 112
    CAIXA 5
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 112
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PACOTE YES
    PREVENDA YES
  work21: |
    CLIEN B4
    ESTAB 112
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PACOTE YES
    PREVENDA YES
  work22: |
    CLIEN B4
    ESTAB 112
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PACOTE YES
    PREVENDA YES
  work23: |
    CLIEN B4
    ESTAB 112
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PACOTE YES
    PREVENDA YES
  work24: |
    CLIEN B4
    ESTAB 112
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PACOTE YES
    PREVENDA YES
  work25: |
    CLIEN B4
    ESTAB 112
    CAIXA 25
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PACOTE YES
    PREVENDA YES
  work: |
    CLIEN B4
    ESTAB 112
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p

cdlspc: 112 122 LEBES001 44640 00000 RS0018166100122

zabbix-proxy:
  psk: 791f6d27647cd089abe3114526345f3449e69f7a8fcc5041953969065452446e