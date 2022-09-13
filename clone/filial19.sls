filial: 19
dhcpd:
  subnets:
    172.17.19.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.19.1
      broadcast_address: 172.17.19.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.19.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws004:
      fixed_address: 172.17.19.104
      hardware: ethernet 00:0F:EA:D6:E2:A4
      ltsp:
        SCREEN_04: ldm
        SCREEN_02: ssh-adm
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv010:
      fixed_address: 172.17.19.110
      hardware: ethernet 00:0F:EA:AA:31:DE
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    pv011:
      fixed_address: 172.17.19.111
      hardware: ethernet  F4:4D:30:8C:EA:18
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv012:
      fixed_address: 172.17.19.112
      hardware: ethernet  F4:4D:30:8C:FA:5D
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv013:
      fixed_address: 172.17.19.113
      hardware: ethernet  00:0F:EA:23:87:F8
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    P2K-PDV-0019-031:
      fixed_address: 172.17.19.131
      hardware: ethernet E0:69:95:56:B1:44
    P2K-PDV-0019-032:
      fixed_address: 172.17.19.132
      hardware: ethernet FC:AA:14:F6:75:5F
    P2K-PDV-0019-033:
      fixed_address: 172.17.19.133
      hardware: ethernet 00:1C:C0:C4:01:2C
    scanner-crediario:
      fixed_address: 172.17.19.240
      hardware: ethernet 30:05:5C:E0:BA:F6

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    RECIBO-BARRAS YES
    NUMERACAOAUTOMATICA YES
    NFCE YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
  work99: |
    CLIEN b4
    ESTAB 19
    CAIXA 99
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work2: |
    CLIEN B4
    ESTAB 19
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
    ESTAB 19
    CAIXA 4
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 19
    CAIXA 10
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work11: |
    CLIEN B4
    ESTAB 19
    CAIXA 10
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work12: |
    CLIEN B4
    ESTAB 19
    CAIXA 10
    RAMO  ?
    FISCAL bematech.r
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work13: |
    CLIEN B4
    ESTAB 19
    CAIXA 13
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 19
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    PAGAMENTO NAO
    VENDA NAO

cdlspc: 019 031 LEBES001 44640 00000 RS0017614700031

zabbix-proxy:
  psk: 79e9106d5bb740406f98ec4e8ea223b9d7ea934b98c522030fd8fef9ddc397e0