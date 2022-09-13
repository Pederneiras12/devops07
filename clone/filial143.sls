filial: 143
dhcpd:
  subnets:
    172.17.143.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 172.17.143.1
      broadcast_address: 172.17.143.255
      subnet-mask: 255.255.255.0
      next_server: 172.17.143.254
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
      fixed_address: 172.17.143.107
      hardware: ethernet FC:AA:14:F6:7B:FE
      ltsp:
        SCREEN_02: ssh-adm
        SCREEN_04: ldm
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws007
        UNIREDE_LP_TER: ws007
    pv020:
      fixed_address: 172.17.143.120
      hardware: ethernet FC:AA:14:F6:8E:EE
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 172.17.143.121
      hardware: ethernet FC:AA:14:F6:7D:5A
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv022:
      fixed_address: 172.17.143.122
      hardware: ethernet FC:AA:14:F6:72:7D
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_04: ldm
    pv023:
      fixed_address: 172.17.143.123
      hardware: ethernet FC:AA:14:F6:79:14
      ltsp:
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 172.17.143.124
      hardware: ethernet FC:AA:14:F6:79:87
      ltsp:
        SCREEN_03: ssh-adm
        UNIREDE_LP_MAT: ws001
    telefonia:
      fixed_address: 172.17.143.200
      hardware: ethernet 80:EE:73:AF:31:B6
    P2K-PDV-0143-031:
      fixed_address: 172.17.143.131
      hardware: ethernet 00:1F:C6:9D:B2:22
    P2K-PDV-0143-032:
      fixed_address: 172.17.143.132
      hardware: ethernet 20:25:64:83:DA:00
    P2K-PDV-0143-033:
      fixed_address: 172.17.143.133
      hardware: ethernet F4:4D:30:83:F3:CC
    scanner-crediario:
      fixed_address: 172.17.143.240
      hardware: ethernet 3C:2A:F4:04:08:23
    NB-CALL-AUD-6:
      fixed_address: 172.17.143.225
      hardware: ethernet 18:66:DA:FF:90:1C
    NB-CALL-FIN-40:
      fixed_address: 172.17.143.226
      hardware: ethernet 88:6F:D4:FC:CC:2A
    NB-CALL-AUD-28:
      fixed_address: 172.17.143.227
      hardware: ethernet F4:30:B9:A8:BD:AD
    NB-CALL-AUD-15:
      fixed_address: 172.17.143.228
      hardware: ethernet 58:20:B1:0C:BE:23
    NB-CALL-AUD-34:
      fixed_address: 172.17.143.229
      hardware: ethernet F4:30:B9:A8:B7:ED      
      
admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    NFCE YES
    ACAO-INDICA-AMIGOS NO
    VENDE-SEGURO SIM
    GOON SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
    LIBERALIMITETOKEN SIM
  work99: |
    CLIEN B4
    ESTAB 143
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
    ESTAB 143
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
    ESTAB 143
    CAIXA 20
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work21: |
    CLIEN B4
    ESTAB 143
    CAIXA 21
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work22: |
    CLIEN B4
    ESTAB 143
    CAIXA 22
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work23: |
    CLIEN B4
    ESTAB 143
    CAIXA 23
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work24: |
    CLIEN B4
    ESTAB 143
    CAIXA 24
    RAMO  ?
    FISCAL
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  work: |
    CLIEN B4
    ESTAB 143
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p

cdlspc: 143 109 LEBES001 44640 00000 RS0019211200109

zabbix-proxy:
  psk: 109ae13337fc3656dd285faab2cf20ece4abb9605075fb0c16a1c4b2e0684f97