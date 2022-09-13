filial: 139
dhcpd:
  subnets:
    172.23.139.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.23.139.1
      broadcast_address: 172.23.139.255
      subnet-mask: 255.255.255.0
      next_server: 172.23.139.254
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
      fixed_address: 172.23.139.101
      hardware: ethernet 70:5A:0F:00:00:00
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    ws004:
      fixed_address: 172.23.139.104
      hardware: ethernet 70:5A:0F:69:F6:89
      ltsp:
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001    
    ws002:
      fixed_address: 172.23.139.102
      hardware: ethernet 50:B3:63:02:9F:21
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
    pv020:
      fixed_address: 172.23.139.120
      hardware: ethernet 70:5A:0F:69:F6:32
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.23.139.121
      hardware: ethernet 70:5A:0F:69:17:55
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.23.139.122
      hardware: ethernet 70:5A:0F:69:F6:3B
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 172.23.139.123
      hardware: ethernet F4:4D:30:83:F3:8D
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.23.139.124
      hardware: ethernet 90:E6:BA:08:07:F7
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.23.139.125
      hardware: ethernet 70:5A:0F:69:07:E9
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0139-031:
      fixed_address: 172.23.139.131
      hardware: ethernet F4:4D:30:83:D1:73
    P2K-PDV-0139-032:
      fixed_address: 172.23.139.132
      hardware: ethernet F4:4D:30:83:C0:24
    P2K-PDV-0139-033:
      fixed_address: 172.23.139.133
      hardware: ethernet F4:4D:30:83:F3:53
    P2K-PDV-0139-034:
      fixed_address: 172.23.139.134
      hardware: ethernet F4:4D:30:83:F4:A4
    P2K-PDV-0139-035:
      fixed_address: 172.23.139.135
      hardware: ethernet F4:4D:30:83:C0:25

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA yes
    RECIBO-BARRAS yes
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    NFCE YES
    LIBERALIMITETOKEN SIM
    FEIRAO-NOME-LIMPO SIM
  work1: |
    CLIEN B4
    ESTAB 139
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work2: |
    CLIEN B4
    ESTAB 139
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work4: |
    CLIEN B4
    ESTAB 139
    CAIXA 4
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO    
  work20: |
    CLIEN B4
    ESTAB 139
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 139
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 139
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 139
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 139
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work25: |
    CLIEN B4
    ESTAB 139
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 139 176 LEBES001 44640 00000 RS0421715300176

zabbix-agent:
  server:
    - zabbixproxy.lebes.com.br, 172.23.139.1, sv-ca-lemonprx.lebes.com.br

zabbix-proxy:
  psk: c6f96853ae42c584490fd4ed4c476c56f1060b825f25de4430370f87b450daac