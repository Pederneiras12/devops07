{% if salt['grains.get']('ip_interfaces:eth0') %}
  {% set ip_interfaces = salt['grains.get']('ip_interfaces:eth0')[0] %}
{% elif salt['grains.get']('ip_interfaces:eth1') -%}
  {% set ip_interfaces = salt['grains.get']('ip_interfaces:eth1')[0] %}
{% elif salt['grains.get']('ip_interfaces:eth2') -%}
  {% set ip_interfaces = salt['grains.get']('ip_interfaces:eth2')[0] %}
{% elif salt['grains.get']('ip_interfaces:eth3') -%}
  {% set ip_interfaces = salt['grains.get']('ip_interfaces:eth3')[0] %}
{%endif -%}
ltsp:
  default:
    SCREEN_DEFAULT: "02"
    SCREEN_02: sistema
    SCREEN_03: no-screen
    XKBLAYOUT: br
    # XKBVARIANT: intl
    SOUND: False
    # LOCALDEV: False
    LOCALDEV: True
    NBD_SWAP: False
    X_NUMLOCK: True
    USE_LOCAL_SWAP: False
    RM_THIN_SYSTEM_SERVICES: "\"qemu-kvm virtualbox iptables\""
    RM_SYSTEM_SERVICES: "\"dnsmasq nbd-server iptables\""
    LDM_XSESSION: lxsession
    LDM_DIRECTX: True
    FILIAL: {{ salt['grains.get']('id') }}
    SERVER: {{ ip_interfaces }}
    TIMEZONE: America/Sao_Paulo
    TIMESERVER: auto
    LDM_LANGUAGE: pt_BR.UTF-8
    LTSP_FATCLIENT: False
    SEARCH_DOMAIN: lebes.com.br
    LOCAL_APPS: True
    LOCAL_APPS_MENU: False
    FSTAB_0: "\"{{ ip_interfaces }}:/home    /home     nfs     defaults,noacl,noatime 0       0\""
    FSTAB_1: "\"{{ ip_interfaces }}:/srv     /srv      nfs     defaults,noacl,noatime 0       0\""
    FSTAB_2: "\"{{ ip_interfaces }}:/usr/dlc /usr/dlc  nfs     defaults,noacl,noatime 0       0\""
    LDM_LIMIT_ONE_SESSION: True
    LDM_LIMIT_ONE_SESSION_PROMPT: True
    CRONTAB_01: "\"*/30 * * * * root /usr/sbin/ntpdate 10.2.0.15\""

    # Para servidor com placa de video antiga
    # X_SMART_COLOR_DEPTH: False

    # Impressora fiscal padrão
    PRINTER_0_DEVICE: /dev/lp0
    PRINTER_0_PORT: 9100

    # Para debug
    # LDM_LOGLEVEL: 7
    
    # Provide a "Login as Guest" button, which uses LDM_USERNAME/LDM_PASSWORD.
    # LDM_GUESTLOGIN: False
    
    # Some other frequently used directives, described in the lts.conf manpage.
    # For really low RAM clients, disable SOUND, LOCAL_APPS and LOCALDEV.
    # VOLUME: 50
    # LOCAL_APPS_EXTRAMOUNTS: /srv
    # LOCALDEV_DENY_INTERNAL_DISKS: False
    # XSERVER: vesa
    # X_BLANKING: 0
    # XKBOPTIONS: "grp:alt_shift_toggle,grp_led:scroll"
    # LDM_PRINTER_DEFAULT: "psc-1310-series"
    # OVERLAY: "yes"
