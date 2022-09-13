filial: 302
dhcpd:
  subnets:
    192.168.202.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 192.168.202.1
      broadcast_address: 192.168.202.255
      subnet-mask: 255.255.255.0
      next_server: 192.168.202.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    p2K-pdv-0302-031:
      fixed_address: 192.168.202.101
      hardware: ethernet 10:88:0F:00:87:3A
    pv010:
      fixed_address: 192.168.202.210
      hardware: ethernet 74:27:EA:7A:4F:27
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    p2K-catag-0302-001:
      fixed_address: 192.168.202.230
      hardware: ethernet F4:8E:38:E5:75:35
    p2K-videowall-0302-001:
      fixed_address: 192.168.202.224
      hardware: ethernet C4:4A:AC:DA:5C:B7

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
    ESTAB 302
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
    ESTAB 302
    CAIXA 99
    RAMO  ?
    FISCAL 
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 302
    CAIXA 10
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work: |
    CLIEN B4
    ESTAB 302
    CAIXA 99
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    

    
cdlspc: 302 159 LEBES001 44640 00000 RS0019419000159

zabbix-proxy:
  psk: 6c0cf5ed916f333eedfabe94617763d8178560d02421fefb62dde004ce9b81c8