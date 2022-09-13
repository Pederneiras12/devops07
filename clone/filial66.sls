filial: 66
dhcpd:
  subnets:
    172.17.66.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.66.1
      broadcast_address: 172.17.66.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.66.254
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
      fixed_address: 172.17.66.105
      hardware: ethernet 94:DE:80:F1:6C:A4
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws005
        UNIREDE_LP_TER: ws005
    ws006:
      fixed_address: 172.17.66.106
      hardware: ethernet 50:B3:63:02:A8:A4
      ltsp:
        SCREEN_04: ldm
        SCREEN_02: ssh-adm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9100
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.66.120
      hardware: ethernet F4:4D:30:8C:F9:B3
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.66.121
      hardware: ethernet 50:B3:63:02:97:6F
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv022:
      fixed_address: 172.17.66.122
      hardware: ethernet 00:1F:C6:9D:AD:94
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.66.123
      hardware: ethernet E0:69:95:3B:48:28
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.66.124
      hardware: ethernet 70:5A:0F:69:0D:89
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0066-031:
      fixed_address: 172.17.66.131
      hardware: ethernet 00:24:8C:FF:FB:32
    P2K-PDV-0066-032:
      fixed_address: 172.17.66.132
      hardware: ethernet 10:88:0F:00:87:30
    P2K-PDV-0066-033:
      fixed_address: 172.17.66.133
      hardware: ethernet 70:71:BC:4E:71:8A
    P2K-PDV-0066-034:
      fixed_address: 172.17.66.134
      hardware: ethernet 10:88:0F:00:87:56
    relogio-ponto:
      fixed_address: 172.17.66.210
      hardware: ethernet FC:52:CE:80:38:5D
    scanner-crediario:
      fixed_address: 172.17.66.240
      hardware: ethernet 30:05:5C:CF:FC:F0 
    NB-CALL-AUD-6:
      fixed_address: 172.17.66.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.66.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.66.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.66.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.66.229
      hardware: ethernet F4:30:B9:A8:B7:ED      

admcom:
  work98: |
    CLIEN B4
    ESTAB 66
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
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA yes
    RECIBO-BARRAS yes
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE YES
    NFCE-CONTIGENCIA NAO
    LIBERALIMITETOKEN SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN b4
    ESTAB 66
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
    ESTAB 66
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
    ESTAB 66
    CAIXA 6
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    ABRE-GAVETA SIM
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 66
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 66
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 66
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 66
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 66
    CAIXA 24
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 66
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 066 51 LEBES001 44640 00000 RS0017685400051

zabbix-proxy:
  psk: bd3bd2b50e1bee83339eb0cdbb9c2e9d9c001611b6e432b3debf04b071b8748e