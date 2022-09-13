filial: 309
dhcpd:
  subnets:
    172.17.147.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.147.1
      broadcast_address: 172.17.147.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.147.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    p2K-pdv-147-031:
      fixed_address: 172.17.147.131
      hardware: ethernet 94:C6:91:4E:4C:C7
      filename: /p2k/pxelinux.0
    ws010:
      fixed_address: 172.17.147.110
      hardware: ethernet FC:AA:14:F6:73:9E
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws010
        UNIREDE_LP_TER: ws010
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9100
        #PRINTER_0_PORT: 9101        
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR

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
    ESTAB 309
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
    ESTAB 309
    CAIXA 98
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work10: |
    CLIEN B4
    ESTAB 309
    CAIXA 10
    RAMO  ?
    FISCAL 
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO   

cdlspc: 147 LEBES001 44640 00000 RS0011703600174

nfs:
  nfs_server: 172.17.147.254

P2K-POS:
  ip: 172.17.147.131
  num_loja: 0147
  pdv: 031
  gateway: 172.17.147.1
  rede: 172.17.255.0
  cnpj: 96662168019070
  estado: RS
  ip_sp: 172.17.147.254
  
zabbix-proxy:
  psk: 71575f50180f6a655a8cf7cdaacba247192568998dc4c05ad09ca63646771bf5