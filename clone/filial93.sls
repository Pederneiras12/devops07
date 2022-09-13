filial: 93
dhcpd:
  subnets:
    172.17.193.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.193.1
      broadcast_address: 172.17.193.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.193.254
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
      fixed_address: 172.17.193.101
      hardware: ethernet FC:AA:14:F8:99:84
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.193.120
      hardware: ethernet 90:E6:BA:9B:4B:4F
      ltsp:
        SCREEN_04: ldm
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv021:
      fixed_address: 172.17.193.121
      hardware: ethernet 20:CF:30:BD:0B:25
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
    pv022:
      fixed_address: 172.17.193.122
      hardware: ethernet FC:AA:14:F6:73:CE
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.17.193.123
      hardware: ethernet 48:5B:39:F8:2C:1B
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.193.124
      hardware: ethernet 20:CF:30:BD:03:26
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.193.125
      hardware: ethernet 00:0F:EA:D1:E3:F2
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0093-031:
      fixed_address: 172.17.193.131
      hardware: ethernet 74:27:EA:7A:48:9E
    P2K-PDV-0093-032:
      fixed_address: 172.17.193.132
      hardware: ethernet 00:02:2A:F4:1B:EB
    P2K-PDV-0093-033:
      fixed_address: 172.17.193.133
      hardware: ethernet 00:E0:8B:8C:8E:45
    P2K-PDV-0093-034:
      fixed_address: 172.17.193.134
      hardware: ethernet 70:85:C2:35:08:03
    P2K-PDV-0093-035:
      fixed_address: 172.17.193.135
      hardware: ethernet 00:1F:C6:9D:B3:8D
    
admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA  yes
    RECIBO-BARRAS yes
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN SIM
    NFCE YES
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work1: |
    CLIEN B4
    ESTAB 93
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
    ABRE-GAVETA SIM
  work5: |
    CLIEN B4
    ESTAB 93
    CAIXA 5
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
    ABRE-GAVETA SIM
  work20: |
    CLIEN B4
    ESTAB 93
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 93
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 93
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 93
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 93
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 93
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 93
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 093 111 LEBES001 44640 00000 RS00181079000111

zabbix-proxy:
  psk: c3ab27d188b0d66994f80d611175594161e53833b572a2794bf77666cee0dc29