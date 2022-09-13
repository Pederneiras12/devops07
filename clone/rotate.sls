logrotate:
  jobs:
       syslog:
         path:
           - /var/log/cron
           - /var/log/maillog
           - /var/log/messages
           - /var/log/secure
           - /var/log/spooler
         config:
           - sharedscripts
           - daily
           - rotate 7
           - compress
           - delaycompress
           - missingok
           - notifempty
           - postrotate
           - '       /bin/kill -HUP `cat /var/run/syslogd.pid 2> /dev/null` 2> /dev/null || true'
           - endscript
       monit:
         path:
           - /var/log/monit
         config:
           - sharedscripts
           - daily
           - rotate 7
           - size 100k
           - compress
           - delaycompress
           - missingok
           - notifempty
           - create 0644 root root
           - postrotate
           - '       /sbin/service monit condrestart > /dev/null 2>&1 || true'
           - endscript
       httpd:
          path:
            - /var/log/httpd/*log
          config:
            - daily
            - missingok
            - sharedscripts
            - rotate 5
            - compress
            - delaycompress
            - size 1k
            - postrotate
            - '      /sbin/service httpd reload > /dev/null 2>/dev/null || true'
            - endscript
       salt:
         path:
           - /var/log/salt/master
           - /var/log/salt/minion
           - /var/log/salt/key
         config:
           - daily
           - rotate 5
           - compress
           - missingok
           - notifempty
       zabbix-agent:
         path:
           - /var/log/zabbix/zabbix_agentd.log
         config:
           - daily
           - rotate 5
           - compress
           - delaycompress
           - missingok
           - notifempty
           - create 0664 zabbix zabbix
           - postrotate
           - '      /sbin/service zabbix-agent reload > /dev/null 2>/dev/null || true'
           - endscript
       zabbix-proxy:
         path:
           - /var/log/zabbix/zabbix_proxy.log
         config:
           - daily
           - rotate 5
           - compress
           - delaycompress
           - missingok
           - notifempty
           - create 0664 zabbix zabbix
           - postrotate
           - '      /sbin/service zabbix-proxy reload > /dev/null 2>/dev/null || true'
           - endscript
       p2k:
         path:
           - /usr/p2ksp/sp_lj0*/bin/logger/DAO/dao.log
         config:
           - daily
           - rotate 3
           - compress
           - missingok
           - notifempty
           - create 0664 p2ksp p2ksp