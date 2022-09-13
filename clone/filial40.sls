filial: 40
dhcpd:
  subnets:
    172.17.40.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.40.1
      broadcast_address: 172.17.40.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.40.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws002:
      fixed_address: 172.17.40.102
      hardware: ethernet 00:0F:EA:23:3E:70
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    ws004:
      fixed_address: 172.17.40.104
      hardware: ethernet 94:C6:91:C1:9C:10
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        PRINTER_0_DEVICE: /dev/lp0
        PRINTER_0_PORT: 9100
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 172.17.40.120
      hardware: ethernet E0:69:95:56:B0:D7
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.40.121
      hardware: ethernet 94:C6:91:45:F2:E8
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.40.122
      hardware: ethernet 04:D9:F5:79:B1:08
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.40.123
      hardware: ethernet 94:C6:91:45:EF:79
      ltsp:
        UNIREDE_LP_MAT: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
        SCREEN_04: ldm
    P2K-PDV-0040-031:
      fixed_address: 172.17.40.131
      hardware: ethernet 10:88:0F:00:87:37
    P2K-PDV-0040-032:
      fixed_address: 172.17.40.132
      hardware: ethernet 00:27:0E:12:78:F8
    scanner-crediario:
      fixed_address: 172.17.40.240
      hardware: ethernet 30:05:5C:AC:59:1F
    relogio-ponto:
      fixed_address: 172.17.40.210
      hardware: ethernet FC:52:CE:80:8D:8F

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO yes
    NUMERACAOAUTOMATICA yes
    RECIBO-BARRAS yes
    ACAO-INDICA-AMIGOS NO
    NFCE YES
    VENDE-SEGURO SIM
    NFCE-CONTIGENCIA NAO
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 40
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
    ESTAB 40
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    COMECF NAO
    VENDA NAO
  work4: |
    CLIEN B4
    ESTAB 40
    CAIXA 4
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 40
    CAIXA 20
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work21: |
    CLIEN B4
    ESTAB 40
    CAIXA 21
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 40
    CAIXA 22
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 40
    CAIXA 23
    RAMO  ?
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work: |
    CLIEN B4
    ESTAB 40
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS1
    RECIBO recibo_e.p
    CARNE carne_e.p
    VENDA NAO
    PAGAMENTO NAO

cdlspc: 040 060 LEBES001 44640 00000 RS0017724500060

zabbix-proxy:
  psk: 7274299465dfec89fc328e609a7d3bf66da4b67e5fcc2e3782ce7ade43fec24d