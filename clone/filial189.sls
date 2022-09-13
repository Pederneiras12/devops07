filial: 189
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
      next_server: 10.12.0.189
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
      hardware: ethernet E0:69:95:56:B1:44
      fixed_address: 10.12.0.191
      ltsp:
        SCREEN_02: ssh-adm      
        SCREEN_04: ldm
        UNIREDE_LP_MAT: ws004
        UNIREDE_LP_TER: ws004
        PRINTER_0_PORT: 9100
        PRINTER_0_DEVICE: /dev/lp0
        # Ajuste do monitor
        X_SMART_COLOR_DEPTH: False
        XRANDR_DISABLE: True
        LIKE: OLD_MONITOR
    pv012:
      fixed_address: 10.12.0.190
      hardware: ethernet 00:0F:EA:23:2C:C6
      ltsp:
        UNIREDE_LP_MAT: ws004
        UNIREDE_LP_TER: ws004
        PRINTER_0_PORT: 9100
        PRINTER_0_DEVICE: /dev/lp0
        SCREEN_03: ssh-adm
        SCREEN_04: ldm
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
    REPLICA-MATRIZ-FILIAL NAO
    REPLICA-FILIAL-MATRIZ NAO
    VENDE-SEGURO SIM
    USATROCAFONE SIM
    LIBERALIMITETOKEN NAO
    goon nao
    FEIRAO-NOME-LIMPO SIM
    VALIDA-CLIENTE-NOVO SIM
    LIBERA-RENOVACAO-DIVIDA NAO
    IP SAFE 10.2.0.208
  work99: |
    CLIEN B4
    ESTAB 189
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
    ESTAB 189
    CAIXA 98
    RAMO  ?
    FISCAL impecf.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    TERMICAPRE SIM
  work4: |
    CLIEN B4
    ESTAB 189
    CAIXA 4
    RAMO  ?
    FISCAL nfce.p
    PORTAECF /dev/ttyS0
    RECIBO recibo_e.p
    CARNE carne_e.p
    COMECF NAO
  work12: |
    CLIEN B4
    ESTAB 189
    CAIXA 12
    FISCAL bematech.p
    PORTAECF /dev/ttyS0
    PREVENDA YES
    PACOTE YES
    NFE-VERSAO 310

cdlspc: 189 017 LEBES001 44640 00000 RS0017559500017

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