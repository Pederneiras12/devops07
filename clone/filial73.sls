filial: 73
dhcpd:
  subnets:
    172.17.73.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.73.1
      broadcast_address: 172.17.73.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.73.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws003:
      fixed_address: 172.17.73.103
      hardware: ethernet 00:1F:C6:9D:B4:45
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws003
        UNIREDE_LP_TER: ws003
    ws005:
      fixed_address: 172.17.73.105
      hardware: ethernet 00:0F:EA:23:23:90
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws005
        UNIREDE_LP_TER: ws005
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.73.120
      hardware: ethernet 94:C6:91:C1:8D:18
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.73.121
      hardware: ethernet 00:1F:C6:9D:BF:17
      ltsp:
        SCREEN_03: ssh-adm      
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.73.122
      hardware: ethernet 00:0F:EA:D2:35:20
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.73.123
      hardware: ethernet 70:71:BC:52:3F:6B
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.73.124
      hardware: ethernet 94:C6:91:C1:82:A8
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.73.125
      hardware: ethernet 00:0F:EA:D1:BE:40
      ltsp:
        SCREEN_04: ldm      
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR        
    scanner-crediario:
      fixed_address: 172.17.73.240
      hardware: ethernet 3C:2A:F4:21:A9:EF
    P2K-PDV-0073-031:
      fixed_address: 172.17.73.131
      hardware: ethernet 00:24:8C:FA:AE:DA 
    P2K-PDV-0073-032:
      fixed_address: 172.17.73.132
      hardware: ethernet 00:1F:C6:FF:57:4C 
    P2K-PDV-0073-033:
      fixed_address: 172.17.73.133
      hardware: ethernet 38:60:77:26:F8:4F
    NB-CALL-AUD-6:
      fixed_address: 172.17.73.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.73.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.73.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.73.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.73.229
      hardware: ethernet F4:30:B9:A8:B7:ED      

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS yes
    VENDE-SEGURO SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work3: |
    CLIEN B4
    ESTAB 73
    CAIXA 3
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work5: |
    CLIEN B4
    ESTAB 73
    CAIXA 5
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 73
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 73
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 73
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 73
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 73
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 73
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 073 066 LEBES001 44640 00000 RS0017817500066

zabbix-proxy:
  psk: 47e6a94e34f6ebdb53cad1902db8cbf6fc076f5d1f3a22ee5578a485ffd57351