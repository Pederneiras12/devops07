filial: 600
dhcpd:
  subnets:
    10.12.0.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 10.12.0.1
      broadcast_address: 10.12.0.255
      subnet-mask: 255.255.255.0
      next_server: 10.12.0.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    P2K-PDV-0600-040:
      fixed_address: 10.12.0.240
      hardware: ethernet 20:25:64:37:3c:c7
      filename: /p2k/pxelinux.0
    P2K-PDV-0600-041:
      fixed_address: 10.12.0.241
      hardware: ethernet 00:0F:EA:D1:F2:99
      filename: /p2k/pxelinux.0  
    ws002:
      fixed_address: 10.12.0.242
      hardware: ethernet 94:DE:80:F1:7C:1B
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002  
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv011:
      fixed_address: 10.12.0.111
      hardware: ethernet E0:69:95:56:B1:43
      ltsp:
        UNIREDE_LP_MAT: ws002

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
  work99: |
    CLIEN B4
    ESTAB 190
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
    ESTAB 190
    CAIXA 98
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work2: |
    CLIEN B4
    ESTAB 600
    CAIXA 2
    RAMO  ?
    FISCAL 
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
  work11: |
    CLIEN B4
    ESTAB 600
    CAIXA 11
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310

cdlspc: 140 154 LEBES001 44640 00000 RS0018480700154

nfs:
  nfs_server: 10.12.0.254
  
P2K-POS:
  ip: 10.12.0.240
  num_loja: 0600
  pdv: 040
  gateway: 10.12.0.1
  rede: 10.12.255.0
  cnpj: 12345698901234
  estado: RS
  ip_sp: 10.12.0.254