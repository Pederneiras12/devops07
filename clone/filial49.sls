filial: 49
dhcpd:
  subnets:
    172.17.49.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.49.1
      broadcast_address: 172.17.49.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.49.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws007:
      fixed_address: 172.17.49.107
      hardware: ethernet 00:0F:EA:D1:F4:6C
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws007
        UNIREDE_LP_TER: ws007
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR        
    pv020:
      fixed_address: 172.17.49.120
      hardware: ethernet F4:4D:30:83:C0:96
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.49.121
      hardware: ethernet 00:22:15:C1:23:EE
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    pv022:
      fixed_address: 172.17.49.122
      hardware: ethernet 70:71:BC:4E:7F:97
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.49.123
      hardware: ethernet 70:71:BC:36:CC:10
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.49.124
      hardware: ethernet 00:0F:EA:D7:41:53
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    scanner-crediario:
      fixed_address: 172.17.49.240
      hardware: ethernet 3C:2A:F4:21:A9:DB
    P2K-PDV-0049-031:
      fixed_address: 172.17.49.131
      hardware: ethernet 00:1F:C6:9D:AB:DD
    P2K-PDV-0049-032:
      fixed_address: 172.17.49.132
      hardware: ethernet E0:69:95:3B:4C:EB
    P2K-PDV-0049-033:
      fixed_address: 172.17.49.133
      hardware: ethernet E0:69:95:3B:44:31
    P2K-PDV-0049-034:
      fixed_address: 172.17.49.134
      hardware: ethernet 00:1F:C6:9D:C4:F8
    P2K-PDV-0049-035:
      fixed_address: 172.17.49.135
      hardware: ethernet 00:1F:C6:9D:BC:38

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA  yes
    RECIBO-BARRAS yes
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
    LIBERALIMITETOKEN SIM
  work7: |
    CLIEN B4
    ESTAB 49
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
    ESTAB 49
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 49
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 49
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 49
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 49
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 49
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 049 016 LEBES001 44640 00000 RS0017559400016

zabbix-proxy:
  psk: 370211632e1b2f44262d7110d01bc8a285cf31e7dd7e088c686823eb441bb9bf