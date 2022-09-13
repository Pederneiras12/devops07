filial: 307
dhcpd:
  subnets:
    192.168.207.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 192.168.207.1
      broadcast_address: 192.168.207.255
      subnet-mask: 255.255.255.0
      next_server: 192.168.207.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    P2K-PDV-0307-031:
      fixed_address: 192.168.207.131
      hardware: ethernet 10:88:0F:00:87:4E
      filename: /p2k/pxelinux.0
    P2K-PDV-0307-032:
      fixed_address: 192.168.207.132
      hardware: ethernet 94:DE:80:F1:8C:32
      filename: /p2k/pxelinux.0
    pv010:
      fixed_address: 192.168.207.110
      hardware: ethernet 70:5A:0F:69:07:D9
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    p2k-catag-0307-001:
      fixed_address: 192.168.207.230
      hardware: ethernet 84:7B:EB:E4:DD:22
    p2K-videowall-0307-001:
      fixed_address: 192.168.207.224
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
  work99: |
    CLIEN B4
    ESTAB 307
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
    ESTAB 307
    CAIXA 10
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310

cdlspc: 307 166 LEBES001 44640 00000 RS0011574200166

nfs:
  nfs_server: 192.168.207.254
  
P2K-POS:
  ip: 192.168.207.132
  num_loja: 0307
  pdv: 032
  gateway: 192.168.207.1
  rede: 192.168.207.0
  cnpj: 96662168018502
  estado: RS
  ip_sp: 192.168.207.254
  
zabbix-proxy:
  psk: 032abaf3e6f51a61bcf6c29e544cb4080d52ac6eaeedd560bbf0d71ae98120fb  