filial: 187
iptables:
  enable: True
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
      next_server: 10.12.0.179
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
      fixed_address: 10.12.0.180
      hardware: ethernet 00:00:00:00:00:00
      ltsp:
        SCREEN_03: ssh-adm
        SCREEN_04: ldm      
        PRINTER_0_DEVICE: /dev/usb/lp0
        PRINTER_0_PORT: 9101
        UNIREDE_LP_MAT: ws001
        UNIREDE_LP_TER: ws001
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    p2k-pdv-031:
     fixed_address: 10.12.0.181
     hardware: ethernet 94:C6:91:CE:62:2C
     filename: /p2k/pxelinux.0
    p2k-pdv-032:
     fixed_address: 10.12.0.184
     hardware: ethernet 94:C6:91:4B:DF:14
     filename: /p2k/pxelinux.0
    pv020:
      fixed_address: 10.12.0.156
      hardware: ethernet 1C:69:7A:83:71:AB
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
    CRIAPEDIDOAUTOMATICO NO
    RECIBO-BARRAS YES
    NUMERACAOAUTOMATICA YES
    NFCE YES
    ACAO-INDICA-AMIGOS YES
    REPLICA-MATRIZ-FILIAL SIM
    REPLICA-FILIAL-MATRIZ SIM
    VENDE-SEGURO SIM
    USATROCAFONE SIM
    LIBERALIMITETOKEN NAO
    goon nao
    FEIRAO-NOME-LIMPO SIM
    VALIDA-CLIENTE-NOVO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
    IPSAFE 10.2.0.191
  work99: |
    CLIEN B4
    ESTAB 187
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
    ESTAB 187
    CAIXA 98
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work1: |
    CLIEN B4
    ESTAB 187
    CAIXA 1
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
    ESTAB 187
    CAIXA 20
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310
  

cdlspc: 187 017 LEBES001 44640 00000 RS0017559500017

nfs:
  nfs_server: 10.12.0.179

P2K-POS:
  ip: 10.12.0.181
  num_loja: 0187
  pdv: 031
  gateway: 10.12.0.1
  rede: 10.12.255.0
  cnpj: 96662168014353
  estado: RS
  ip_sp: 10.12.0.179

zabbix:
  lookup:
    version_repo: 4.0
    proxy:
      version: 4.0.5-1.el6
    agent:
      version: 4.0.5-1.el6

zabbix-proxy:
  server: zabbix-proxy-ext.webmonitor.com.br
  logfilesize: 0
  logfile: /var/log/zabbix/zabbix_proxy.log
  debuglevel: 3
  dbname: /tmp/proxy.db
  pidfile: /var/run/zabbix/zabbix_proxy.pid
  externalscripts: /usr/lib/zabbix/externalscripts
  snmptrapperfile: /var/log/snmptrap/snmptrap.log
  hostname: {{ grains['id'] }}
  startdiscoverers: 5
  startpollers: 5
  startpingers: 4
  serverport: 10052
  startpollersunreachable: 5
  startsnmptrapper: 1
  cachesize: 16M
  timeout: 5
  tlsconnect: psk
  psk: f51c03e10114c18c78dfd98267cc1c74616af2e41e4f353a980c21a192beeb32
  tlspskfile: /etc/zabbix/zabbix_proxy.psk 
  tlspskidentity: {{ grains['id'] }}
  logslowqueries: 3000
  vmwarecachesize: 64M
  startvmwarecollectors: 3
  starthttppollers: 5
  
sudoers:
  users:
      desliga:
            - 'ALL=NOPASSWD: /bin/bash, /srv/scripts/desliga.sh'

  
  
  