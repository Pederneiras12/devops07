filial: 55
dhcpd:
  subnets:
    172.17.55.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.55.1
      broadcast_address: 172.17.55.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.55.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws008:
      fixed_address: 172.17.55.108
      hardware: ethernet 74:27:EA:7A:4F:54
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws008
        UNIREDE_LP_TER: ws008
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.55.120
      hardware: ethernet 00:0F:EA:AF:90:E6
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws008
        UNIREDE_LP_TER: ws008
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.55.121
      hardware: ethernet E0:69:95:56:A6:E9
      ltsp:
        UNIREDE_LP_MAT: ws008
    pv022:
      fixed_address: 172.17.55.122
      hardware: ethernet 74:27:EA:7A:4F:4E
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.55.123
      hardware: ethernet 70:71:BC:4E:83:AA
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    scanner-crediario:
      fixed_address: 172.17.55.240
      hardware: ethernet 3C:2A:F4:21:A9:F2
    P2K-PDV-0055-032:
      fixed_address: 172.17.55.132
      hardware: ethernet 00:1A:4D:A1:E5:00
    P2K-PDV-0055-033:
      fixed_address: 172.17.55.133
      hardware: ethernet 00:24:8C:FA:AF:5A
    P2K-PDV-0055-034:
      fixed_address: 172.17.55.134
      hardware: ethernet 74:27:EA:72:C8:D9
    NB-CALL-AUD-6:
      fixed_address: 172.17.55.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.55.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.55.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.55.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.55.229
      hardware: ethernet F4:30:B9:A8:B7:ED      

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    RECIBO-BARRAS YES
    NUMERACAOAUTOMATICA YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work8: |
    CLIEN B4
    ESTAB 55
    CAIXA 8
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 55
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 55
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 55
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 55
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 055 022 LEBES001 44640 00000 RS0017588800022

zabbix-proxy:
  psk: 43ce49b80583c4051ba892d97be2487c3ec4e8c3b8675e7b99fd404740701ee0