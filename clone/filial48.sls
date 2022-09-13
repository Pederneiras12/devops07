filial: 48
dhcpd:
  subnets:
    172.17.48.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.48.1
      broadcast_address: 172.17.48.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.48.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws004:
      fixed_address: 172.17.48.104
      hardware: ethernet 00:1F:C6:9D:AE:BC
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws004
        UNIREDE_LP_TER: ws004
    ws005:
      fixed_address: 172.17.48.105
      hardware: ethernet 00:0F:EA:D6:FD:A8
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
    ws006:
      fixed_address: 172.17.48.106
      hardware: ethernet FC:AA:14:F8:99:88
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    ws007:
      fixed_address: 172.17.48.107
      hardware: ethernet 00:19:D1:7D:F3:F9
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws007
        UNIREDE_LP_TER: ws007
    pv020:
      fixed_address: 172.17.48.120
      hardware: ethernet 00:1C:25:AC:FE:F0
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.48.121
      hardware: ethernet 74:27:EA:7A:4F:27
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.48.122
      hardware: ethernet 1C:69:7A:88:1E:14
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.48.123
      hardware: ethernet 94:C6:91:C5:3F:41
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv024:
      fixed_address: 172.17.48.124
      hardware: ethernet 00:1C:25:AC:FE:75
      ltsp:
        UNIREDE_LP_MAT: ws001
    p2k:
      fixed_address: 172.17.48.150
      hardware: ethernet FC:AA:14:F8:96:BC
    relogio-ponto:
      fixed_address: 172.17.48.210
      hardware: ethernet FC:52:CE:80:8D:B2
    P2K-PDV-0048-031:
      fixed_address: 172.17.48.131
      hardware: ethernet 90:E6:BA:9B:53:7E
    P2K-PDV-0048-032:
      fixed_address: 172.17.48.132
      hardware: ethernet 00:1F:C6:FF:56:98
    P2K-PDV-0048-033:
      fixed_address: 172.17.48.133
      hardware: ethernet E0:69:95:3B:47:63
    scanner-crediario:
      fixed_address: 172.17.48.240
      hardware: ethernet 3C:2A:F4:21:C2:94

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN b4
    ESTAB 48
    CAIXA 99
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work4: |
    CLIEN b4
    ESTAB 48
    CAIXA 4
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    ABRE-GAVETA SIM
    VENDA NAO
  work5: |
    CLIEN b4
    ESTAB 48
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
    CLIEN b4
    ESTAB 48
    CAIXA 6
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work7: |
    CLIEN b4
    ESTAB 48
    CAIXA 7
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN b4
    ESTAB 48
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN b4
    ESTAB 48
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN b4
    ESTAB 48
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN b4
    ESTAB 48
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN b4
    ESTAB 48
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN b4
    ESTAB 48
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO
work98: |
    CLIEN B4
    ESTAB 48
    CAIXA 98
    RAMO  ?
    FISCAL
    PREVENDA YES
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO

cdlspc: 048 075 LEBES001 44640 00000 RS0017871900075

zabbix-proxy:
  psk: 8748bb17ad1b97cf0d38c621e7e80808a8531979e8fe4b42c8e419d71e6e3f2f