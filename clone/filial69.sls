filial: 69
dhcpd:
  subnets:
    172.17.69.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.69.1
      broadcast_address: 172.17.69.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.69.254
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
      fixed_address: 172.17.69.101
      hardware: ethernet 00:0F:EA:D2:31:7E
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv010:
      fixed_address: 172.17.69.110
      hardware: ethernet  FC:AA:14:F8:9C:8A
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv011:
      fixed_address: 172.17.69.111
      hardware: ethernet 00:0F:EA:D7:48:75
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv012:
      fixed_address: 172.17.69.112
      hardware: ethernet 00:1F:C6:9D:A9:F6
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv013:
      fixed_address: 172.17.69.113
      hardware: ethernet 70:71:BC:52:3E:C8
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv014:
      fixed_address: 172.17.69.114
      hardware: ethernet 00:0F:EA:D7:2B:43
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv015:
      fixed_address: 172.17.69.115
      hardware: ethernet  E0:69:95:56:AF:52
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    p2k:
      fixed_address: 172.17.69.150
      hardware: ethernet FC:AA:14:F8:96:BC
    relogio-ponto:
      fixed_address: 172.17.69.210
      hardware: ethernet FC:52:CE:80:3A:15
    P2K-PDV-0069-031:
      fixed_address: 172.17.69.131
      hardware: ethernet E0:69:95:3B:4B:52
    P2K-PDV-0069-032:
      fixed_address: 172.17.69.132
      hardware: ethernet E0:69:95:3B:44:A0
    P2K-PDV-0069-033:
      fixed_address: 172.17.69.133
      hardware: ethernet 6C:F0:49:FB:04:72
    scanner-crediario:
      fixed_address: 172.17.69.240
      hardware: ethernet 3C:2A:F4:21:C2:98
    NB-CALL-AUD-6:
      fixed_address: 172.17.69.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.69.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.69.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.69.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.69.229
      hardware: ethernet F4:30:B9:A8:B7:ED      
      
admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    NFCE YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    LIBERALIMITETOKEN SIM
    VENDE-SEGURO SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN b4
    ESTAB 69
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
    ESTAB 69
    CAIXA 1 
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NO
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 69
    CAIXA 10
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work11: |
    CLIEN B4
    ESTAB 69
    CAIXA 11
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work12: |
    CLIEN B4
    ESTAB 69
    CAIXA 12
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work13: |
    CLIEN B4
    ESTAB 69
    CAIXA 13
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work14: |
    CLIEN B4
    ESTAB 69
    CAIXA 14
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work15: |
    CLIEN B4
    ESTAB 69
    CAIXA 15
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 69
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 069 53 LEBES001 44640 00000 RS0017693000053

zabbix-proxy:
  psk: d423cf9af1601c2a055a3a5a630dc8161d8e34f13796bb87a22af24830d35f76