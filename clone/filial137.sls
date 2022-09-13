filial: 137
dhcpd:
  subnets:
    172.17.137.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.137.1
      broadcast_address: 172.17.137.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.137.254
      root-path: nbd:{{ salt['grains.get']('ip_interfaces:eth0')[0] }}:2000:squashfs:ro
      # root-path: nfs:/opt/ltsp/i386
      extra_config: |
        if substring( option vendor-class-identifier, 0, 9 ) = "PXEClient" {
               filename "/ltsp/i386/pxelinux.0";
           } else {
               filename "/ltsp/i386/nbi.img";
           }
  hosts:
    ws007:
      fixed_address: 172.17.137.107
      hardware: ethernet FC:AA:14:F6:77:8F
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws007
        UNIREDE_LP_TER: ws007
    pv020:
      fixed_address: 172.17.137.120
      hardware: ethernet FC:AA:14:F6:77:F0
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.137.121
      hardware: ethernet FC:AA:14:F6:72:55
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.137.122
      hardware: ethernet 94:DE:80:F1:7C:20
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.137.124
      hardware: ethernet FC:AA:14:F6:70:9E
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 172.17.137.125
      hardware: ethernet FC:AA:14:F6:72:54
      ltsp:
        SCREEN_04: ldm      
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 172.17.137.126
      hardware: ethernet FC:AA:14:F6:7A:09
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0137-031:
      fixed_address: 172.17.137.131
      hardware: ethernet E0:69:95:3B:4F:6F
    P2K-PDV-0137-032:
      fixed_address: 172.17.137.132
      hardware: ethernet 70:71:BC:4E:6C:ED
    P2K-PDV-0137-033:
      fixed_address: 172.17.137.133
      hardware: ethernet 00:24:8C:FA:A3:11
    telefonia:
      fixed_address: 172.17.137.200
      hardware: ethernet 80:EE:73:AF:30:BE
    scanner-crediario:
      fixed_address: 172.17.137.240
      hardware: ethernet 3C:2A:F4:21:A9:F4

admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    NFCE YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 137
    CAIXA 99
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work7: |
    CLIEN B4
    ESTAB 137
    CAIXA 7
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    ABRE-GAVETA SIM
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 137
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work21: |
    CLIEN B4
    ESTAB 137
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work22: |
    CLIEN B4
    ESTAB 137
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work24: |
    CLIEN B4
    ESTAB 137
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work25: |
    CLIEN B4
    ESTAB 137
    CAIXA 25
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work26: |
    CLIEN B4
    ESTAB 137
    CAIXA 26
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work: |
    CLIEN B4
    ESTAB 137
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p

cdlspc: 137 156 LEBES001 44640 00000 RS0019410400156

zabbix-proxy:
  psk: d9826c0685a8ab081b73d747f7cda8f1c48b3dca56de1e6f3e7bc5ca1a46668c