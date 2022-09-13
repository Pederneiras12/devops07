filial: 110
dhcpd:
  subnets:
    172.17.110.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.110.1
      broadcast_address: 172.17.110.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.110.254
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
      fixed_address: 172.17.110.101
      hardware: ethernet 00:0F:EA:D2:1E:7B
      ltsp:
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.110.120
      hardware: ethernet E0:69:95:3B:49:92
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.110.121
      hardware: ethernet E0:69:95:56:AA:DE
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.110.122
      hardware: ethernet 00:0F:EA:D1:D1:B9
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.110.123
      hardware: ethernet 90:E6:BA:39:D2:64
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0110-031:
      fixed_address: 172.17.110.131
      hardware: ethernet 00:21:97:C9:27:03
    P2K-PDV-0110-032:
      fixed_address: 172.17.110.132
      hardware: ethernet 00:08:54:2F:9A:E9
    P2K-PDV-0110-033:
      fixed_address: 172.17.110.133
      hardware: ethernet 6C:F0:49:F1:52:E4
    scanner-crediario:
      fixed_address: 172.17.110.240
      hardware: ethernet 3C:2A:F4:21:A8:95

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS no
    LIBERALIMITETOKEN SIM
    VENDE-SEGURO SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work1: |
    CLIEN B4
    ESTAB 110
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 110
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 110
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 110
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 110
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 147 187 LEBES001 44640 00000 RS0013000100187

zabbix-proxy:
  psk: 9f10944985aaa0e6101680c1fd0cdeecc09419ca15a8f371214d43854b71885a