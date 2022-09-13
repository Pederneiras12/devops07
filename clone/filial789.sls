filial: 789
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
      next_server: 10.12.0.100
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
      hardware: ethernet 00:0F:EA:D1:E4:4B
      fixed_address: 10.12.0.101
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws002:
      hardware: ethernet 00:02:2A:DA:DC:06
      fixed_address: 10.12.0.102
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR    
    P2K-PDV-0789-031:
      fixed_address: 10.12.0.131
      hardware: ethernet F4:4D:30:83:F3:B2
      filename: /p2k/pxelinux.0
    P2K-AV-0789-012:
      fixed_address: 10.12.0.162
      hardware: ethernet 00:00:00:00:00:16  
    pv010:
      fixed_address: 10.12.0.110
      hardware: ethernet 18:C0:4D:F0:E3:B0
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv012:
      fixed_address: 10.12.0.112
      hardware: ethernet F4:4D:30:83:C0:44
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
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
    IP SAFE 10.2.0.208
  work99: |
    CLIEN B4
    ESTAB 789
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
    ESTAB 789
    CAIXA 98
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work1: |
    CLIEN B4
    ESTAB 789
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    COMECF NAO
  work10: |
    CLIEN B4
    ESTAB 789
    CAIXA 10
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work12: |
    CLIEN B4
    ESTAB 789
    CAIXA 12
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310   

cdlspc: 140 154 LEBES001 44640 00000 RS0018480700154

nfs:
  nfs_server: 10.188.188.254
  
P2K-POS:
  ip: 10.188.188.131
  num_loja: 789
  pdv: 031
  gateway: 10.188.188.1
  rede: 10.188.188.0
  cnpj: 12345698901234
  estado: RS
  ip_sp: 10.188.188.254
