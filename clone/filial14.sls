filial: 14
dhcpd:
  subnets:
    172.17.14.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.14.1
      broadcast_address: 172.17.14.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.14.254
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
      fixed_address: 172.17.14.105
      hardware: ethernet 00:0F:EA:D1:BF:0A
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws005
        UNIREDE_LP_TER: ws005
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.14.120
      hardware: ethernet F4:4D:30:83:C2:44
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.14.121
      hardware: ethernet 50:B3:63:02:A9:A3
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.14.122
      hardware: ethernet 74:27:EA:7A:4F:66
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.14.123
      hardware: ethernet 20:CF:30:BD:0A:9A
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0014-031:
      fixed_address: 172.17.14.131
      hardware: ethernet FC:AA:14:F6:72:1F
    P2K-PDV-0014-032:
      fixed_address: 172.17.14.132
      hardware: ethernet FC:AA:14:F6:8F:38
    P2K-PDV-0014-033:
      fixed_address: 172.17.14.133
      hardware: ethernet 94:DE:80:F1:80:2E
    P2K-PDV-0014-034:
      fixed_address: 172.17.14.134
      hardware: ethernet 00:24:8C:FF:FB:AF
    scanner-crediario:
      fixed_address: 172.17.14.240
      hardware: ethernet 30:05:5C:AC:33:F8
    relogio-ponto:
      fixed_address: 172.17.14.210
      hardware: ethernet FC:52:CE:80:8D:64
    NB-CALL-AUD-6:
      fixed_address: 172.17.14.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.14.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.14.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.14.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.14.229
      hardware: ethernet F4:30:B9:A8:B7:ED

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    NFCE YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 14
    CAIXA 99
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work5: |
    CLIEN B4
    ESTAB 14
    CAIXA 5
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 14
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PACOTE YES
    PREVENDA YES
  work21: |
    CLIEN B4
    ESTAB 14
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 14
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 14
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 14
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO

cdlspc: 014 96 LEBES001 44640 00000 RS0017972300096

zabbix-proxy:
  psk: 5223e16d7e0d91a0d39e65d33d4d156835fcd30bb4aef68ebdb931537a2c07ba