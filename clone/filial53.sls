filial: 53
dhcpd:
  subnets:
    172.17.53.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.53.1
      broadcast_address: 172.17.53.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.53.254
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
      fixed_address: 172.17.53.103
      hardware: ethernet 00:15:F2:EB:E9:7A
      ltsp:
        SCREEN_02: ssh-adm  
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
        UNIREDE_LP_MAT: ws003
        UNIREDE_LP_TER: ws003
    pv010:
      fixed_address: 172.17.53.110
      hardware: ethernet  94:DE:80:F1:6D:30
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv011:
      fixed_address: 172.17.53.111
      hardware: ethernet 00:0F:EA:D6:A1:9B
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv012:
      fixed_address: 172.17.53.112
      hardware: ethernet 00:1D:7D:8A:F4:2C
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv013:
      fixed_address: 172.17.53.113
      hardware: ethernet 00:1F:C6:9D:BC:76
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0053-031:
      fixed_address: 172.17.53.131
      hardware: ethernet E0:69:95:3B:4D:51
    P2K-PDV-0053-032:
      fixed_address: 172.17.53.132
      hardware: ethernet 00:0F:EA:D7:22:7F
    P2K-PDV-0053-033:
      fixed_address: 172.17.53.133
      hardware: ethernet F4:4D:30:8C:FA:A4
    scanner-crediario:
      fixed_address: 172.17.53.240
      hardware: ethernet 3C:2A:F4:21:C2:3D
    NB-CALL-AUD-6:
      fixed_address: 172.17.53.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.53.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.53.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.53.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.53.229
      hardware: ethernet F4:30:B9:A8:B7:ED      
    
admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA yes
    RECIBO-BARRAS yes
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 53
    CAIXA 99
    RAMO  ?
    FISCAL 
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    VENDA NAO
  work3: |
    CLIEN B4
    ESTAB 53
    CAIXA 3
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 53
    CAIXA 10
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work11: |
    CLIEN B4
    ESTAB 53
    CAIXA 11
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work12: |
    CLIEN B4
    ESTAB 53
    CAIXA 12
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work13: |
    CLIEN B4
    ESTAB 53
    CAIXA 13
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 53
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 053 017 LEBES001 44640 00000 RS0017559500017

zabbix-proxy:
  psk: 1be53ea95973f8ff4076c18ef9ad9691f3b85b4c0cfbc3f2fb79bc86a5839991