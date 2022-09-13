filial: 05
dhcpd:
  subnets:
    172.17.5.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.5.1
      broadcast_address: 172.17.5.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.5.254
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
      fixed_address: 172.17.5.106
      hardware: ethernet 74:27:EA:72:C8:8D
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
      fixed_address: 172.17.5.120
      hardware: ethernet 00:0F:EA:D6:7B:2C
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.5.121
      hardware: ethernet 00:0F:EA:D7:3E:08
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.5.122
      hardware: ethernet 00:0F:EA:23:21:CE
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.5.123
      hardware: ethernet 94:DE:80:F3:66:A3
      ltsp:
        SCREEN_03: ssh-adm      
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.5.124
      hardware: ethernet 00:1F:C6:9D:C1:B4
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.5.125
      hardware: ethernet 00:1C:25:AD:6B:7A
      ltsp:
        UNIREDE_LP_MAT: ws001 
    scanner-crediario:
      fixed_address: 172.17.5.240
      hardware: ethernet 3C:2A:F4:21:C2:8F
    P2K-PDV-0005-031:
      fixed_address: 172.17.5.131
      hardware: ethernet 38:60:77:5C:66:A2
    P2K-PDV-0005-032:
      fixed_address: 172.17.5.132
      hardware: ethernet E0:69:95:56:AB:46
    P2K-PDV-0005-033:
      fixed_address: 172.17.5.133
      hardware: ethernet 38:60:77:6A:0F:68
    P2K-PDV-0005-034:
      fixed_address: 172.17.5.134
      hardware: ethernet 00:1F:C6:FF:57:5B
    NB-CALL-AUD-6:
      fixed_address: 172.17.5.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.5.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.5.227
      hardware: ethernet F4:5:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.5.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.5.229
      hardware: ethernet F4:30:B9:A8:B7:ED
    
admcom:
  work98: |
    CLIEN B4
    ESTAB 05
    CAIXA 98
    RAMO  ?
    FISCAL
    PREVENDA YES
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work6: |
    CLIEN B4
    ESTAB 05
    CAIXA 6
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    VENDA NAO
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
  work20: |
    CLIEN B4
    ESTAB 05
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 05
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 05
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 05
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 05
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 05
    CAIXA 25
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  
    
cdlspc: 005 46 LEBES001 44640 00000 RS0017665100046

zabbix-proxy:
  psk: e6ca444950b9ddcda50f81ee39a5c999807ee635cc5772cd2527ae4485b1283e