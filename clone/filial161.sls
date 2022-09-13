filial: 161
dhcpd:
  subnets:
    172.17.161.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.161.1
      broadcast_address: 172.17.161.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.161.254
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
      fixed_address: 172.17.161.101
      hardware: ethernet 94:C6:91:43:AF:A3
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
    pv026:
      fixed_address: 172.17.161.126
      hardware: ethernet 94:C6:91:45:EB:0C
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.161.121
      hardware: ethernet E0:69:95:20:DB:A9
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.161.122
      hardware: ethernet 94:C6:91:45:F0:AB
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv023:
      fixed_address: 172.17.161.123
      hardware: ethernet 94:C6:91:45:F2:70
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.161.124
      hardware: ethernet 94:C6:91:43:BB:17
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    P2K-PDV-0161-031:
      fixed_address: 172.17.161.131
      hardware: ethernet 94:C6:91:45:F0:A9
    P2K-PDV-0161-032:
      fixed_address: 172.17.161.132
      hardware: ethernet 94:C6:91:45:FB:D2
    P2K-PDV-0161-033:
      fixed_address: 172.17.161.133
      hardware: ethernet 94:C6:91:45:E4:CA
    P2K-PDV-0161-034:
      fixed_address: 172.17.161.134
      hardware: ethernet 94:C6:91:45:EE:25
    ap-wifi-01:
      fixed_address: 172.17.161.150
      hardware: ethernet E8:1C:BA:3D:93:98
    ap-wifi-02:
      fixed_address: 172.17.161.151
      hardware: ethernet E8:1C:BA:3D:97:58
       NB-CALL-AUD-6:
      fixed_address: 172.17.161.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.161.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.161.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.161.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.161.229
      hardware: ethernet F4:30:B9:A8:B7:ED   


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
    ESTAB 161
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    ABRE-GAVETA SIM
    VENDA NAO
  work21: |
    CLIEN B4
    ESTAB 161
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work22: |
    CLIEN B4
    ESTAB 161
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work23: |
    CLIEN B4
    ESTAB 161
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work24: |
    CLIEN B4
    ESTAB 161
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
  work26: |
    CLIEN B4
    ESTAB 161
    CAIXA 26
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES

cdlspc: 161 179 LEBES001 44640 00000 RS0011869200179

zabbix-proxy:
  psk: 793f307131a7f0e379bde16e5c3ae3a28b941ce49f66921b757107a9e15ad6fb