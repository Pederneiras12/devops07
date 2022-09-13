filial: 36
dhcpd:
  subnets:
    172.17.36.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.36.1
      broadcast_address: 172.17.36.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.36.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws006:
      fixed_address: 172.17.36.106
      hardware: ethernet 38:60:77:5C:67:BD
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws006
        UNIREDE_LP_TER: ws006
    ws007:
      fixed_address: 172.17.36.107
      hardware: ethernet 00:0F:EA:AF:91:82
      ltsp:
        SCREEN_04: ldm
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws006
        UNIREDE_LP_TER: ws006
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.36.120
      hardware: ethernet 00:0F:EA:D6:B6:0D
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.36.121
      hardware: ethernet 00:0D:61:D6:B9:A4
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.36.122
      hardware: ethernet 00:26:18:E9:D8:04
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.36.123
      hardware: ethernet 00:0F:EA:D7:22:63
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.36.124
      hardware: ethernet E0:69:95:3B:47:5A
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.36.125
      hardware: ethernet FC:AA:14:F6:8E:1C
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.17.36.126
      hardware: ethernet 00:0F:EA:23:2C:C6
      ltsp:
        UNIREDE_LP_MAT: ws001
    scanner-crediario:
      fixed_address: 172.17.36.240
      hardware: ethernet 3C:2A:F4:21:C2:47
    P2K-PDV-0036-031:
      fixed_address: 172.17.36.131
      hardware: ethernet 00:1F:C6:9D:B1:62
    P2K-PDV-0036-032:
      fixed_address: 172.17.36.132
      hardware: ethernet E0:69:95:3B:4D:F9
    P2K-PDV-0036-033:
      fixed_address: 172.17.36.133
      hardware: ethernet 70:71:BC:4E:70:ED
    P2K-PDV-0036-034:
      fixed_address: 172.17.36.134
      hardware: ethernet 00:1F:C6:9D:A9:D0
    NB-CALL-AUD-6:
      fixed_address: 172.17.36.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.36.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.36.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.36.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.36.229
      hardware: ethernet F4:30:B9:A8:B7:ED      

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA  yes
    RECIBO-BARRAS yes
    ACAO-INDICA-AMIGOS NO
    NFCE YES
    VENDE-SEGURO SIM
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work6: |
    CLIEN B4
    ESTAB 36
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
    ESTAB 36
    CAIXA 7
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 36
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 36
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 36
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 36
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 36
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 36
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 36
    CAIXA 26
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 036 37 LEBES001 44640 00000 RS0017621300037

zabbix-proxy:
  psk: 0de8c75b7fefab86199498b9991efd5a0cb97f7e1419a158c1931096e0dbd940