ssh_config:
  'ws*':
    StrictHostKeyChecking: 'no'
    UserKnownHostsFile: '/dev/null'
  'pv*':
    StrictHostKeyChecking: 'no'
    UserKnownHostsFile: '/dev/null'
  '*':
    GSSAPIAuthentication: 'yes'
    ForwardX11Trusted: 'yes'
    SendEnv: 'LANG LC_CTYPE LC_NUMERIC LC_TIME LC_COLLATE LC_MONETARY LC_MESSAGES LC_PAPER LC_NAME LC_ADDRESS LC_TELEPHONE LC_MEASUREMENT LC_IDENTIFICATION LC_ALL LANGUAGE XMODIFIERS'
