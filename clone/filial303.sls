filial: 303
dhcpd:
  subnets:
    192.168.203.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 192.168.203.1
      broadcast_address: 192.168.203.255
      subnet-mask: 255.255.255.0
      next_server: 192.168.203.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    P2K-PDV-0303-031:
      fixed_address: 192.168.203.131
      hardware: ethernet 10:88:0F:00:87:43
    pv010:
      fixed_address: 192.168.203.210
      hardware: ethernet E0:69:95:21:00:89
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    p2k-catag-0303-001:
      fixed_address: 192.168.203.230
      hardware: ethernet F4:8E:38:E6:93:B5
    p2K-videowall-0303-001:
      fixed_address: 192.168.203.224
      hardware: ethernet 00:00:00:00:00:00

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    RECIBO-BARRAS YES
    NUMERACAOAUTOMATICA YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE YES
    LIBERALIMITETOKEN SIM
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work1: |
    CLIEN B4
    ESTAB 303
    CAIXA 1
    RAMO  ?
    FISCAL bemamfd.r
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p 
    MODELO-ECF BemaMFD
    NFE-VERSAO 310
  work99: |
    CLIEN B4
    ESTAB 303
    CAIXA 99
    RAMO  ?
    FISCAL 
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work98: |
    CLIEN B4
    ESTAB 303
    CAIXA 98
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work10: |
    CLIEN B4
    ESTAB 303
    CAIXA 10
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work: |
    CLIEN B4
    ESTAB 303
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    

    
cdlspc: 303 160 LEBES001 44640 00000 RS0011544700160

zabbix-proxy:
  psk: 855c2dcc7ed3a28a934004c8dd8eb9b8d01e4da1a7c24c391ba421cb3051505d