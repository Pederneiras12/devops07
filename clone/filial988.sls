filial: 988
dhcpd:
  subnets:
    192.168.250.0:
      comment: Rede da loja
      netmask: 255.255.255.0
      get-lease-hostnames: True
      routers:
        - 192.168.250.1
      broadcast_address: 192.168.250.255
      subnet-mask: 255.255.255.0
      next_server: 192.168.250.254
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
      fixed_address: 192.168.250.101
      hardware: ethernet 00:0F:EA:2A:C8:DE
      ltsp:
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
    ws002:
      fixed_address: 192.168.250.102
      hardware: ethernet 40:16:7E:BB:52:08
      ltsp:
        UNIREDE_LP_MAT: ws002
        UNIREDE_LP_TER: ws002
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
    ws003:
      fixed_address: 192.168.250.103
      hardware: ethernet E0:69:95:FE:6D:8E
      ltsp:
        UNIREDE_LP_MAT: ws003
        UNIREDE_LP_TER: ws003
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
    ws004:
      fixed_address: 192.168.250.104
      hardware: ethernet E0:69:95:AF:67:C4
      ltsp:
        UNIREDE_LP_MAT: ws004
        UNIREDE_LP_TER: ws004
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
    ws005:
      fixed_address: 192.168.250.105
      hardware: ethernet E0:69:95:20:DB:A9
      ltsp:
        UNIREDE_LP_MAT: ws005
        UNIREDE_LP_TER: ws005
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
    ws006:
      fixed_address: 192.168.250.106
      hardware: ethernet 00:1F:C6:9D:B1:70
      ltsp:
        UNIREDE_LP_MAT: ws006
        UNIREDE_LP_TER: ws006
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
    ws007:
      fixed_address: 192.168.250.107
      hardware: ethernet 00:1F:C6:FF:76:EA
      ltsp:
        UNIREDE_LP_MAT: ws007
        UNIREDE_LP_TER: ws007
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
    ws008:
      fixed_address: 192.168.250.108
      hardware: ethernet 6C:F0:49:F7:B3:C6
      ltsp:
        UNIREDE_LP_MAT: ws008
        UNIREDE_LP_TER: ws008
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
    ws009:
      fixed_address: 192.168.250.109
      hardware: ethernet 00:0F:EA:D6:F3:2E
      ltsp:
        UNIREDE_LP_MAT: ws009
        UNIREDE_LP_TER: ws009
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
    ws010:
      fixed_address: 192.168.250.110
      hardware: ethernet 00:1F:C6:9D:AA:5E
      ltsp:
        UNIREDE_LP_MAT: ws010
        UNIREDE_LP_TER: ws010
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
    ws011:
      fixed_address: 192.168.250.111
      hardware: ethernet 00:0F:EA:D6:DC:BB
      ltsp:
        UNIREDE_LP_MAT: ws011
        UNIREDE_LP_TER: ws011
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
        SCREEN_03: ssh-adm
    ws012:
      fixed_address: 192.168.250.112
      hardware: ethernet 00:0F:EA:D6:E2:A4
      ltsp:
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        PRINTER_0_PORT: 9101
        PRINTER_0_DEVICE: /dev/usb/lp0
        SCREEN_04: ldm
        SCREEN_03: ssh-adm
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv020:
      fixed_address: 192.168.250.120
      hardware: ethernet 00:0F:EA:D1:D2:E4
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv021:
      fixed_address: 192.168.250.121
      hardware: ethernet 00:0F:EA:D2:31:7A
      ltsp:
        UNIREDE_LP_MAT: ws001
        SCREEN_03: ssh-adm
    pv022:
      fixed_address: 192.168.250.122
      hardware: ethernet 70:71:BC:4E:7F:01
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv023:
      fixed_address: 192.168.250.123
      hardware: ethernet 00:0F:EA:D2:0F:52
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv024:
      fixed_address: 192.168.250.124
      hardware: ethernet 70:71:BC:4E:7E:89
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv025:
      fixed_address: 192.168.250.125
      hardware: ethernet 00:0F:EA:D6:A8:E6
      ltsp:
        UNIREDE_LP_MAT: ws001
    pv026:
      fixed_address: 192.168.250.126
      hardware: ethernet 00:0F:EA:D2:1E:D6
      ltsp:
        UNIREDE_LP_MAT: ws001
    P2K-PDV-0988-031:
      fixed_address: 192.168.250.131
      hardware: ethernet 50:B3:63:02:98:98
    P2K-PDV-0988-032:
      fixed_address: 192.168.250.132
      hardware: ethernet 50:B3:63:02:96:D9
    P2K-PDV-0988-033:
      fixed_address: 192.168.250.133
      hardware: ethernet 50:B3:63:02:97:98
    P2K-PDV-0988-034:
      fixed_address: 192.168.250.134
      hardware: ethernet 50:B3:63:02:99:AC
    P2K-PDV-0988-035:
      fixed_address: 192.168.250.135
      hardware: ethernet 50:B3:63:02:A9:DD
    P2K-PDV-0988-036:
      fixed_address: 192.168.250.136
      hardware: ethernet 50:B3:63:02:9F:B2
    P2K-PDV-0988-037:
      fixed_address: 192.168.250.137
      hardware: ethernet 50:B3:63:02:9B:E9
    P2K-PDV-0988-038:
      fixed_address: 192.168.250.138
      hardware: ethernet 50:B3:63:02:9E:F3
    P2K-PDV-0988-039:
      fixed_address: 192.168.250.139
      hardware: ethernet 50:B3:63:02:9B:57
    P2K-PDV-0988-040:
      fixed_address: 192.168.250.140
      hardware: ethernet 50:B3:63:02:9E:13
    P2K-PDV-0988-041:
      fixed_address: 192.168.250.141
      hardware: ethernet 50:B3:63:02:97:7F  
    
admcom:
  mestre: |
    CRIAPEDIDOAUTOMATICO YES
    NUMERACAOAUTOMATICA YES
    RECIBO-BARRAS YES
    NFCE YES
    ACAO-INDICA-AMIGOS no
    VENDE-SEGURO SIM
    LIBERALIMITETOKEN SIM
    NFCE-CONTIGENCIA NAO
    GOON SIM
    FEIRAO-NOME-LIMPO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
  work99: |
    CLIEN B4
    ESTAB 988
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
    ESTAB 988
    CAIXA 1
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work2: |
    CLIEN B4
    ESTAB 988
    CAIXA 2
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work3: |
    CLIEN B4
    ESTAB 988
    CAIXA 3
    RAMO  ?
    TIPECF 1
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work4: |
    CLIEN B4
    ESTAB 988
    CAIXA 4
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work5: |
    CLIEN B4
    ESTAB 988
    CAIXA 5
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work6: |
    CLIEN B4
    ESTAB 988
    CAIXA 6
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work7: |
    CLIEN B4
    ESTAB 988
    CAIXA 7
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    VENDA NAO
  work8: |
    CLIEN B4
    ESTAB 988
    CAIXA 8
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    VENDA NAO
  work9: |
    CLIEN B4
    ESTAB 988
    CAIXA 9
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    VENDA NAO
  work10: |
    CLIEN B4
    ESTAB 988
    CAIXA 10
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    VENDA NAO
  work11: |
    CLIEN B4
    ESTAB 988
    CAIXA 11
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310
    VENDA NAO
  work12: |
    CLIEN B4
    ESTAB 988
    CAIXA 12
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    CARNE carne_e.p
    RECIBO recibo_e.p
    COMECF NAO
    NFE-VERSAO 310    
    VENDA NAO
  work20: |
    CLIEN B4
    ESTAB 988
    CAIXA 20
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work21: |
    CLIEN B4
    ESTAB 988
    CAIXA 21
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work22: |
    CLIEN B4
    ESTAB 988
    CAIXA 22
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work23: |
    CLIEN B4
    ESTAB 988
    CAIXA 23
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work24: |
    CLIEN B4
    ESTAB 988
    CAIXA 24
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work25: |
    CLIEN B4
    ESTAB 988
    CAIXA 25
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work26: |
    CLIEN B4
    ESTAB 988
    CAIXA 26
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work98: |
    CLIEN B4
    ESTAB 988
    CAIXA 98
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work: |
    CLIEN B4
    ESTAB 988
    CAIXA 8
    RAMO  ?
    FISCAL imppri.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p

cdlspc: 988 149 LEBES001 44640 00000 RS0019263500149