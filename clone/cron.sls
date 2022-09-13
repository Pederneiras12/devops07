cron:
    jobs:
      linfant:
        cmd: /srv/admcom/linfant > /srv/admcom/logs/linfant_cron.log 2>&1
        minute: 0
        hour: 23
#       comp-r:
#         cmd: /srv/scripts/comp-r.sh > /srv/scripts/logs/comp-r_cron.log 2>&1
#         minute: 55
#         hour: '12,18,0'
      Processa NFCE:
        ensure: absent
        cmd: /srv/scripts/status-nfce.sh > /srv/scripts/logs/status-nfce.log 2>&1
        minute: 0
        hour: 21
      backup_bases_offline:
        cmd: /srv/scripts/backup-bases-offline.sh > /srv/scripts/logs/backup-bases-offline.log 2>&1
        minute: 0
        hour: 3
      backup_bases_online:
        cmd: /srv/scripts/backup-bases-online.sh > /srv/scripts/logs/backup-bases-online.log 2>&1
        minute: 0
        hour: '9-20'
#      limpa_tmp_geral:
#        cmd: /srv/scripts/limpa_temp.sh > /srv/scripts/logs/limpa_temp_cron.log 2>&1
#        minute: 45
#        hour: '23-7'
      copiar_pedidos_P2K:
        cmd: /home/drebes/scripts/pedidos_p2k.sh
        minute: '*'
      copiar_pedidos_P2K10:
        cmd: sleep 10 && /home/drebes/scripts/pedidos_p2k.sh
        minute: '*'
      copiar_pedidos_P2K20:
        cmd: sleep 20 && /home/drebes/scripts/pedidos_p2k.sh
        minute: '*'
      copiar_pedidos_P2K30:
        cmd: sleep 30 && /home/drebes/scripts/pedidos_p2k.sh
        minute: '*'
      copiar_pedidos_P2K40:
        cmd: sleep 40 && /home/drebes/scripts/pedidos_p2k.sh
        minute: '*'
      copiar_pedidos_P2K50:
        cmd: sleep 50 && /home/drebes/scripts/pedidos_p2k.sh
        minute: '*'
      byroot:
        cmd: /srv/scripts/byroot-log.sh > /srv/scripts/logs/byroot-log_cron.log 2>&1
        minute: 0
        hour: 22
      destranca:
        cmd: /srv/scripts/destranca > /srv/scripts/logs/destranca.log 2>&1
        minute: 5
        hour: '0,6,17'
      limpa_rec:
        cmd: for i in $(ls -ld /srv/admcom/work* |awk '{print $9}'); do find /srv/admcom/$i -type f -name "*rec-*" -ctime +30 -exec rm -f {} \; ;done
        minute: 35
        hour: 23
      log-db:
        cmd: /srv/scripts/log-db.sh > /srv/scripts/logs/log-db_cron.log 2>&1
        minute: 21
#       raid:
#         cmd: /srv/scripts/raid.sh verifica > /srv/scripts/logs/raid.log 2>&1
#         minute: 22
#       habilita_imp:
#         cmd: /srv/scripts/habilita_imp.sh > /srv/scripts/logs/habilita_imp.sh_cron.log 2>&1
#         minute: 23
#       sessions_vnc:
#         cmd: killall Xvnc
#         minute: 00
#          hour: 04
      status-bancos:
        cmd: /srv/admcom/scripts/status-bancos.sh > /srv/scripts/logs/status-bancos_cron.log 2>&1
#      desconaut:
#        cmd: /srv/admcom/scripts/desconaut.sh > /srv/scripts/logs/desconaut_cron.log 2>&1
#        minute: '*/2'
      status-nfe:
        cmd: /srv/admcom/scripts/status-nfe.sh > /srv/scripts/logs/status-nfe_cron.log 2>&1
        minute: 0
        hour: '7-19'
      measure_time_zabbix:
        cmd: sh /etc/zabbix/measure.time.sh
        minute: '*/5'
      Remove Files CP:
        cmd: /srv/scripts/remove_files_cp.sh > /srv/scripts/logs/remove_files_cp.log 2>&1
        minute: 0
        hour: 23
      Remove Files P2KSP:
        cmd: /srv/scripts/remove_files_p2ksp.sh > /srv/scripts/logs/remove_files_p2ksp.log 2>&1
        minute: 0
        hour: '*/2'  
      zip_pedidos_p2k:
        cmd: /srv/scripts/zip_files_download_p2k.sh > /srv/scripts/logs/zip_pedido_p2k.log 2>&1
        minute: 30
        hour: 23
      check_carga_p2k:
        cmd: /srv/scripts/check_carga_p2k.sh > /srv/scripts/logs/check_carga_p2k_cron.log 2>&1
        minute: '*/5'
        hour: '5-9'
      limpa_backup_trans_p2k:
        cmd: /srv/scripts/limpa_backup_trans_p2k.sh > /srv/scripts/logs/limpa_backup_trans_p2k.log 2>&1
        minute: 00
        hour: 23
        dayweek: 4
#        daymonth:
      limpa_download_p2k:
        cmd: /srv/scripts/limpa_download_p2k.sh > /srv/scripts/logs/limpa_download_p2k.log 2>&1
        minute: 10
        hour: 23
        dayweek: 4
#        daymonth:
#     */30 * * * * /srv/scripts/vnc.sh desativageral > /srv/scripts/logs/vnc.sh_desativageral.log 2>&1
      limpa_tela_grafica:
        cmd: /srv/scripts/limpa_tela_grafica.sh > /srv/scripts/logs/limpa_tela_grafica.log 2>&1
        minute: 0
        hour: '*/2'
      executa_contapdv:
        cmd: /usr/admcom/progr/contadorpv.sh >/dev/null 2>&1
        minute: 0
        hour: 7
      restart_servico_p2k:
        cmd: service p2k-sp stop && service p2k-sp-vrs-updater stop && service p2k-sp start && service p2k-sp-vrs-updater start > /dev/null 2>&1
        minute: 10
        hour: 23
        daymonth: 15       