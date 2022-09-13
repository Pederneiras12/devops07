filial: 191
dhcpd:
  subnets:
    172.16.1.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.16.1.1
      broadcast_address: 172.16.1.255
      subnet-mask: 255.255.255.0
      next_server: {{ salt['grains.get']('ip_interfaces:eth0')[0] }}
      # root-path: nfs:/opt/ltsp/i386
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws200:
      comment: |
          Servidor Positivo de teste
      hardware: ethernet d4:3d:7e:e9:cd:cf
      fixed_address: 172.16.1.111
      ltsp:
        SCREEN_03: shell
        SCREEN_04: ldm
        XKBLAYOUT: us
        XKBVARIANT: intl
        XKBKEYTABLE: us-acentos
        XKBMODEL: pc105

    ws201:
      comment: |
          Servidor Positivo de teste
      hardware: ethernet 00:05:1c:1a:b0:47
      fixed_address: 172.16.1.112
      ltsp:
        SCREEN_03: shell
        SCREEN_04: ldm
        XKBLAYOUT: us
        XKBVARIANT: intl
        XKBKEYTABLE: us-acentos
        XKBMODEL: pc105

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO NO
    RECIBO-BARRAS YES
    NUMERACAOAUTOMATICA YES
    NFCE YES
    ACAO-INDICA-AMIGOS YES
  work11: |
    CLIEN B4
    ESTAB 189
    CAIXA 04
    RAMO ?
    FISCAL nfce.p 
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    MODELO-ECF BemaMFD
  work12: |
    CLIEN B4
    ESTAB 189
    CAIXA 04
    RAMO ?
    FISCAL nfce.p 
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    MODELO-ECF BemaMFD

cdlspc: 013 056 LEBES001 44640 00000 RS0017694500056
