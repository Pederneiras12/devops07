filial: 99
dhcpd:
  subnets:
    172.17.99.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.99.1
      broadcast_address: 172.17.99.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.99.254
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
      fixed_address: 172.17.99.105
      hardware: ethernet 00:24:8C:FA:B0:2F
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws005
        UNIREDE_LP_TER: ws005
    ws007:
      fixed_address: 172.17.99.107
      hardware: ethernet 00:0F:EA:D2:1D:BF
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
      fixed_address: 172.17.99.120
      hardware: ethernet 00:1F:C6:9D:B1:63
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.99.121
      hardware: ethernet 70:5A:0F:69:0D:76
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.99.122
      hardware: ethernet 00:0F:EA:D6:A7:BD
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.99.123
      hardware: ethernet 00:0F:EA:D1:4C:5E
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv024:
      fixed_address: 172.17.99.124
      hardware: ethernet 70:71:BC:4E:6D:26
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0099-032:
      fixed_address: 172.17.99.132
      hardware: ethernet 10:88:0F:00:87:2D    
    P2K-PDV-0099-033:
      fixed_address: 172.17.99.133
      hardware: ethernet 38:60:77:5c:6c:63
    P2K-PDV-0099-034:
      fixed_address: 172.17.99.134
      hardware: ethernet 10:88:0F:00:87:2C
    scanner-crediario:
      fixed_address: 172.17.99.240
      hardware: ethernet 30:05:5C:CF:FD:99

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
    LIBERALIMITETOKEN SIM
  work5: |
    CLIEN B4
    ESTAB 99
    CAIXA 5
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work7: |
    CLIEN B4
    ESTAB 99
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
    ESTAB 99
    CAIXA 20
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 99
    CAIXA 21
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 99
    CAIXA 22
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 99
    CAIXA 23
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 99
    CAIXA 24
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 99
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 099 104 LEBES001 44640 00000 RS00179919000104

zabbix-proxy:
  psk: 01747a25a3da6ce5cfb69106f911e1a10232989b9273b7016d91bdcd8341a1d5