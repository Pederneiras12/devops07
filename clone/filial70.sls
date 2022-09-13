filial: 70
dhcpd:
  subnets:
    172.17.70.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.70.1
      broadcast_address: 172.17.70.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.70.254
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
      fixed_address: 172.17.70.101
      hardware: ethernet 74:27:EA:7A:4C:F2
      ltsp:
        PRINTER_0_DEVICE: /dev/lp0
        SCREEN_04: ldm
        SCREEN_02: ssh-adm
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws008:
      fixed_address: 172.17.70.108
      hardware: ethernet E0:69:95:56:B3:21
      ltsp:
        SCREEN_02: ssh-adm
        UNIREDE_LP_MAT: ws008
        UNIREDE_LP_TER: ws008
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.70.120
      hardware: ethernet 94:C6:91:45:EF:7E
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.70.121
      hardware: ethernet 20:CF:30:BD:03:4B
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.70.122
      hardware: ethernet 94:C6:91:45:E7:79
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.70.123
      hardware: ethernet 70:5A:0F:69:17:96
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.70.124
      hardware: ethernet 00:24:8C:FA:B0:93
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    pv025:
      fixed_address: 172.17.70.125
      hardware: ethernet 00:0F:EA:23:77:81
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.17.70.126
      hardware: ethernet 00:1F:C6:9D:B1:EF
      ltsp:
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv027:
      fixed_address: 172.17.70.127
      hardware: ethernet 00:24:8C:FA:AF:33
      ltsp:
    P2K-PDV-0070-031:
      fixed_address: 172.17.70.131
      hardware: ethernet 74:27:EA:72:C8:9B
    P2K-PDV-0070-032:
      fixed_address: 172.17.70.132
      hardware: ethernet 10:88:0F:00:87:34
    P2K-PDV-0070-033:
      fixed_address: 172.17.70.133
      hardware: ethernet 00:1F:C6:9D:B2:0C
    P2K-PDV-0070-034:
      fixed_address: 172.17.70.134
      hardware: ethernet 10:88:0F:00:87:55
    P2K-PDV-0070-035:
      fixed_address: 172.17.70.135
      hardware: ethernet 70:71:BC:4E:50:71
    P2K-PDV-0070-036:
      fixed_address: 172.17.70.136
      hardware: ethernet 10:88:0F:00:87:46
    scanner-crediario:
      fixed_address: 172.17.70.240
      hardware: ethernet 30:05:5C:E0:BA:39
    relogio-ponto:
      fixed_address: 172.17.70.210
      hardware: ethernet FC:52:CE:80:70:C0

admcom:
  work98: |
    CLIEN B4
    ESTAB 70
    CAIXA 98
    RAMO  ?
    FISCAL
    PREVENDA YES
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE-CONTIGENCIA NAO
    NFCE SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 70
    CAIXA 99
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work1: |
    CLIEN B4
    ESTAB 70
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work8: |
    CLIEN B4
    ESTAB 70
    CAIXA 8
    RAMO  ?
    FISCAL 
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 70
    CAIXA 20
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 70
    CAIXA 21
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 70
    CAIXA 22
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 70
    CAIXA 23
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 70
    CAIXA 24
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 70
    CAIXA 25
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 70
    CAIXA 26
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work27: |
    CLIEN B4
    ESTAB 70
    CAIXA 27
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 70
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p

cdlspc: 070 55 LEBES001 44640 00000 RS0017694300055

zabbix-proxy:
  psk: 12b30421e62c894369910b1de6e31f6cbb4aefd2dd96a7ef96b5121bf2aa33b9