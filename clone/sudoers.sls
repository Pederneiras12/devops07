sudoers:
  defaults:
    generic:
      - 'requiretty'
      - '!visiblepw'
      - 'always_set_home'
      - 'env_reset'
      - 'env_keep =  "COLORS DISPLAY HOSTNAME HISTSIZE INPUTRC KDEDIR LS_COLORS"'
      - 'env_keep += "MAIL PS1 PS2 QTDIR USERNAME LANG LC_ADDRESS LC_CTYPE"'
      - 'env_keep += "LC_COLLATE LC_IDENTIFICATION LC_MEASUREMENT LC_MESSAGES"'
      - 'env_keep += "LC_MONETARY LC_NAME LC_NUMERIC LC_PAPER LC_TELEPHONE"'
      - 'env_keep += "LC_TIME LC_ALL LANGUAGE LINGUAS _XKB_CHARSET XAUTHORITY"'
      - 'secure_path = /sbin:/bin:/usr/sbin:/usr/bin'
      - 'secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"'
    user_list:
      zabbix: '!requiretty'
      root: '!requiretty'
  users:
    root:
      - 'ALL=(ALL)  ALL'
    zabbix:
      - 'ALL=(ALL)  NOPASSWD: /etc/init.d/*'
      - 'ALL=NOPASSWD: /etc/zabbix/disk_clear.py'
      - 'ALL=(ALL:ALL) NOPASSWD: /etc/zabbix/externalscripts/start_monit.sh'
    pv:
      - 'ALL=NOPASSWD: ALL'