{% set filial = salt['grains.get']('id').replace('filial','LBS-f')+"-server" %}

zabbix:
  lookup:
    version_repo: 4.4
    proxy:
      version: 4.4.6-1.el6
    agent:
      version: 4.4.6-1.el6

zabbix-agent:
  server:
    - zabbixproxy.lebes.com.br,sv-ca-lemonprx.lebes.com.br
  serveractive:
    - zabbixproxy.lebes.com.br,sv-ca-lemonprx.lebes.com.br
  pidfile: /var/run/zabbix/zabbix_agentd.pid
  # logtype: file
  logfile: /var/log/zabbix/zabbix_agentd.log
  include: /etc/zabbix/zabbix_agentd.d/*.conf
  userparameters:
    - carga_base,/etc/zabbix/carga_base.sh
    - discovery_caixas[*],/etc/zabbix/discovery_caixa.sh
    - update_p2k_servidor[*],/etc/zabbix/update_p2k.sh $1
    - update_p2k_caixa[*],/etc/zabbix/update_p2k.sh $1 $2
    - discovery_bases[*],/etc/zabbix/discovery_bases.sh
    - check_logs[*],/etc/zabbix/check_logs.sh $1 $2 $3
    - check_4g[*],/etc/zabbix/check_4g.sh $1
    - discovery_numeros_caixa[*],/etc/zabbix/discovery_numeros_caixas.sh
    - valida_hora_caixa[*],/etc/zabbix/valida_hora_caixa.sh $1
    - discovery_discos[*],/etc/zabbix/discovery_discos.sh
    - verifica_raid[*],/etc/zabbix/verifica_raid.sh $1 $2
    - verifica_message_p2k,/srv/scripts/message.p2k-ep.sh
    - discovery_file_progress[*],/etc/zabbix/discovery_file_progress.sh
    - consulta_api,/etc/zabbix/externalscripts/consultaapi.sh
    - bios.release.date,lshal | grep -i date
  enableremotecommands: 1
  logremotecommands: 1
  timeout: 15
  
zabbix-proxy:
  server: zabbix-server-ext.webmonitor.com.br
  logfilesize: 0
  logfile: /var/log/zabbix/zabbix_proxy.log
  debuglevel: 3
  dbname: /tmp/proxy.db
  pidfile: /var/run/zabbix/zabbix_proxy.pid
  externalscripts: /etc/zabbix/externalscripts
  hostname:  {{ filial }}
  startdiscoverers: 5
  startpollers: 5
  startpingers: 4
  serverport: 10052
  startpollersunreachable: 5
  startsnmptrapper: 1
  cachesize: 16M
  timeout: 5
  tlsconnect: psk
  psk: 89ca6cf140c6b57f46af6ecead0f18dc848bf123611903bed96b6c1823f3c959
  tlspskfile: /etc/zabbix/zabbix_proxy.psk 
  tlspskidentity: {{ filial }}
  logslowqueries: 3000
  starthttppollers: 5
  datasenderfrequency: 5