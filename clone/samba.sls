samba:
  lookup:
    server: samba4
    client: samba4-client
    service: smb
    config: /etc/samba/smb.conf
    config_src: salt://samba/files/smb.conf

samba_sections:
  global:
    workgroup: {{ grains['id'] }}
    delete veto files: True
    guest account: nobody
    log file: /var/log/samba/%m.log
    max log size: 0
    security: user
    socket options: TCP_NODELAY SO_RCVBUF=8192 SO_SNDBUF=8192
    dns proxy: no
    map to guest: Bad User
    guest ok: yes
  INV:
    path: /srv/admcom/inventario
    read only: No
    force create mode: 0777
    force directory mode: 0777
    guest ok: Yes
    # hosts deny: all
    # hosts allow: {{ salt['network.subnets']()|first }}
    browseable: no
    vfs objects: extd_audit
  nfe:
    path: /srv/nfe
    read only: No
    force create mode: 0777
    force directory mode: 0777
    guest ok: Yes
    # hosts deny: all
    # hosts allow: {{ salt['network.subnets']()|first }}
    browseable: no
    vfs objects: extd_audit
  relat-pdf:
    path: /srv/admcom/relat-pdf
    read only: No
    force create mode: 0777
    force directory mode: 0777
    guest ok: Yes
    # hosts deny: all
    # hosts allow: {{ salt['network.subnets']()|first }}
    browseable: no
    vfs objects: extd_audit
  cp:
    path: /srv/admcom/cp
    read only: No
    force create mode: 0777
    force directory mode: 0777
    guest ok: Yes
    # hosts deny: all
    # hosts allow: {{ salt['network.subnets']()|first }}
    browseable: no
    vfs objects: extd_audit