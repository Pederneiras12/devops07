filial: 27
dhcpd:
  subnets:
    172.17.27.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.27.1
      broadcast_address: 172.17.27.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.27.254
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
      fixed_address: 172.17.27.107
      hardware: ethernet 00:0F:EA:D1:F3:C6
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws009:
      fixed_address: 172.17.27.109
      hardware: ethernet 00:0F:EA:AA:10:BF
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.27.120
      hardware: ethernet 00:1F:C6:9D:B0:3D
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.27.121
      hardware: ethernet E0:69:95:56:AB:68
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.27.122
      hardware: ethernet 00:0F:EA:D1:FC:05
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.27.123
      hardware: ethernet 38:60:77:26:F9:1F
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.27.124
      hardware: ethernet E0:69:95:3B:4F:92
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv027:
      fixed_address: 172.17.27.127
      hardware: ethernet 00:0F:EA:D6:E1:B4
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    scanner-crediario:
      fixed_address: 172.17.27.240
      hardware: ethernet 3C:2A:F4:21:C1:20
    P2K-PDV-0027-031:
      fixed_address: 172.17.27.131
      hardware: ethernet E0:69:95:3B:49:D2
    P2K-PDV-0027-032:
      fixed_address: 172.17.27.132
      hardware: ethernet 90:E6:BA:9B:53:F3
    P2K-PDV-0027-033:
      fixed_address: 172.17.27.133
      hardware: ethernet F4:4D:30:83:C0:3A
    P2K-PDV-0027-034:
      fixed_address: 172.17.27.134
      hardware: ethernet 20:25:64:37:16:57

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    NFCE YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work7: |
    CLIEN B4
    ESTAB 27
    CAIXA 7
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work9: |
    CLIEN B4
    ESTAB 27
    CAIXA 9
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 27
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 27
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 27
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 27
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 27
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work27: |
    CLIEN B4
    ESTAB 27
    CAIXA 27
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 027 62 LEBES001 44640 00000 RS0017729700062

zabbix-proxy:
  psk: f8a7dcf7d9b70aba617cb66dd0aac002a35a1dc457f21df2e7421a75478fab82