root_authorized:
    sv-ca-ac:
      pubkey: 'ssh-dss AAAAB3NzaC1kc3MAAACBANhQdHNkHMwhIjfKmoUC+LSNc25qzTyjg/8J7m55+Lq9yS+mOGKXQHZSj+FyJhwxTSCu938S8LuQJB862eFQArEX6gjqQ8AMe7+ebrIs629odVUhkhSADgXsMEalNBN3ho4mcDh23ZDwutI3NslEDlBHE4Lep/29htFsdFcboGKHAAAAFQDZrKecZii10sN4Z9OQ5KOU5dK9lQAAAIAE/AGreeukDUcCyb0r5n3To1B/xBWITqDU0FVam0+GYj5YMfrYIotXiJVuSz5zp0UZ70li1AKFnB+cvj732YU852j2xZoWPwo2oMIbgLRrLfNEr6ud4I0i18HgMGOQd3wlpz16KPpkQHZom7OZDNv2f2pZR3+9cRpgZbqmKLhiIQAAAIAfo4SZ2oqofoWhhrVGPzH3i+p73fgaH3eoQCJZnnTyhOxPrfyTuiISwkyTAHt9JkMDG9I4XHfa4TylckEqxkblT4S71SruF4Y3Gsny0R/0Od9wf1SMMkZs/bQ0UugdUK2fAslj/zt/EZ25x3MgFenNfqn86cSZSZcEWDMgVxqisg== root@database'
    sv-ca-ws:
      pubkey: 'ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAIEAjw6PZdsQszOQiiEjwZcJTfTFR9pVFl4/k4wRuZxw5aZylLzhg37SnL82+YOg0Vkd3HsszPaYm5x/yNO+U/m4GHZ5FmwjD1mieeXTztZ7fMWA9hEUz88UfURJhptqsICB1ei7CIsaMJWELkKQKVLebI4b25Xj+3/+ofqImZM876c= root@sv-ca-ws'
    sv-ca-apache:
      pubkey: 'ssh-dss AAAAB3NzaC1kc3MAAACBAKjHa2Ixd+NhcrnB48bk1sLAqB2TGDLFUoCeJvMQBtEEaLZ2lpb+ZgpoiMSZidLa7qZCEsllCCh/E0AIOJVlw8lU8u9QONEZyeEaEwkwTqGJ6cuslDd+xAIuzD22ppCO6tpkQ7gxTEzgcSWJJY+cWx9rZKtpCaWLxmcRnUUG8vbpAAAAFQDHPai3tR8gGi1c2JgtEmPfeVBAzwAAAIEAkocIsmLGbOIYPMWkgeGN24FCK7a3xOdoZR/BGXhVIf9l/vkkmfZxLPg6oK+K3tbKD48HYUMikvQSumfawXIfQbqX8fEanJ0wr7LLl5af1A2Nglq/LC82eznpFsJRhtoJNROXG0YWQv6W9DYHfbVhU9XRZHFYCB9xYBdVJlIfleQAAACAI8JBKUJ+ROI7gHrbUw7cMWi4JhAq/97eZ+iqzNXDVNwTSgp22cZb81vg+kyhrIc2p6LhA/3J35vE1PhbjvyPtV3VdDTEzZwnaCAMtuFO0VP7odNg+nemL8fCL9fy5tETRZu6qPqDN/MC1VPS2l0SJNBluf3kmlrcJHLFi9UBrDY= root@aplic-adm'
    sv-ca-retaguarda:
      pubkey: 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA9Wpn9jT9PmRAvkDammEOKkOqwJJQYNosTTIqT5L+R0u0AHNpNuzI/ox6IKgM4d6cKOWRUdmm3C6vxtYvMhlvRyXeKHoDFkBMsVOSUvaYzlaxyWaVlAWbeg6zfdu6FL02JJN4o82k0qrzZ7qdF1kw8w+2Exwc6Z8AoNqItAcm/dP5Fi4euEOZpX9SOMzuSwKr6g/SkzNL+SgO/a4vAKvxPBFwAvA1ce2dPcP0Nkmph2F7rXy6BqfKuxKljjJDWMqQL4y20zYhyhPmu62BH6LSGiYy+QzAer3v40GavnFfu9X3gfXtfT0QbrBLtGZDfMwa9u4Z0NbrEuUamOQR6UiKAQ== root@sv-ca-retaguarda'
users:
  root:
    home: /root
    ssh_auth_pillar:
      sv-ca-ac: "root_authorized"
      sv-ca-ws: "root_authorized"
      sv-ca-apache: "root_authorized"
      sv-ca-retaguarda: "root_authorized"
  caixa99:
    password: '$6$i5ujq29kOakMBe2h$2k5K8fr1OjUe/3nzhr2fvFgOfCaR5WPhvBP0fdVZZ3Yhgv3/1T.h4iDZRrJzXdn2uX2oJXOxXTuoAjKlVQYtj1'
    enforce_password: True
  caixa01:
    password: '$6$lEyB2ji6I3z6$qth6rdm77G9JHkP8UFU.ciLIYWocAIUBxQ0pidNXMGPJzgCpmvp8.m4onLXQ5OYFU9FkQUtXj6L05n0WkWUzl0'
    enforce_password: True
  caixa02:
    password: '$6$oSJ1Trmb$IGbjz5itExmICD7XAJ8VAwDWhAhmwkv9ND0kvTIlSetZtsYFRwq8DcAFFm/wGsydtbib73VqfHz79Qj.nFfDc1'
    enforce_password: True
  caixa03:
    password: '$6$WTmN5OT6Dk$fC/Xp6Xmlc9efJ7CLLmwDRQT6QgXZbT1SZNc/MJ8ow3MY7jOpse9qhsBvCfgt1UE6igxAUBzxXW1BLq/ptK7h0'
    enforce_password: True
  caixa04:
    password: '$6$p7xPc418$M2CwaYx7xQya.FLVC0aWpTAeX6/.4uR5kOkcX8XBk0AloggRMQT.DCsdUNtTaueagsTGrxC4ut5Ipop3Xi7fd.'
    enforce_password: True
  caixa05:
    password: '$6$ggo1BzbU0u2Gs.0h$JVuzJtXDJ0qzE057f1qmWrWEaLlJtgHaGU48SNsbn8xpefSwzlVnYhe0veaDjotZrZTsr/Y4qAd7LmdCP6cU50'
    enforce_password: True
  caixa06:
    password: '$6$VnXu3LMbeuJy9AbD$lKGXVHlod2ddBstW1DUSjZpUn7I8/Gjj2YqKItoFNiLeBwotzakB.2Jo4wv7n3bAuyCx7Me4jCz0UUsQCRmLJ0'
    enforce_password: True
  caixa07:
    password: '$6$/4zbmINOuA5JdVTf$/pyCIW7L9AlS0Gy3zB0B0GA8Sj4AAw5Qb62G5lKXrtJnISUapOyYdp944zb3pv.tSRvArs5dUxidCa6YxwEuO1'
    enforce_password: True
  caixa09:
    password: '$6$.DZ7XkSXX2d3QnVo$dwfVk2T9dLLBsem8JhZzb.08Ngh0cLaKKlEIoMdPLIg/VpfT0AZe1aDeO5lB5ep8htWUks6AJ430ApkOWZ5jk1'
    enforce_password: True
  caixa10:
    password: '$6$Dd9js8.uRAMU0fqQ$BxRiwKaloQShoq4.BlTycRKxbvI9BfvvY3DkLoGJg4KIttaZrsbIH2QXR2Asv./SAnco7JdRZIudhy.rjfca71'
    enforce_password: True
  prevenda11:
    password: '$6$2yRO467RrrlxI7cz$OKqZoYW/Vbl7YxJEIriGb1fpo4NRJpG8DDj2STpgHHby2cZJoNAaC5qleODKHzrsWdbIOTB6HAAKe2wEHNp460'
    enforce_password: True
  prevenda13:
    password: '$6$LbSgwUP9ZAa8KP2b$OZkUAp2jriufsH8p0HNyDHQbi4/sIr4zM5XcQVhp5v9ryqVSy7Q9PWdmP.foAXF9GrY4DF8NceUtNU6BRjMc61'
    enforce_password: True
  prevenda14:
    password: '$6$DUw58Fb9.im4ekF6$j2KSW8xrjApW3uiJPTQ09eKL0RrSSPZJKwoUKZfDyxsN7igTnqEsMJhSEgY4khn.L5vJ/oQRFpjmM7dennD3q0'
    enforce_password: True
  prevenda20:
    password: '$6$qJlopOJbP0Z4DoGH$9/rnwDZqOQk54E7MhkFInbaWMo9ogVVFpkIWCGWLWdrJlq553CUlWWS6X9Ft1CRUi91nXj09YYk1471QKQ2vl/'
    enforce_password: True
  prevenda21:
    password: '$6$cmHmHuHmLAwEEyCl$MAGjnNbP9EHPuPrcPZvHM73452yiWgntovvuFRkmXuV//0cjmfD3F.sgQBmJ9LGlU14by7qrF5YX6XRXmfEdk/'
    enforce_password: True
  prevenda22:
    password: '$6$MNpNDpUIwE2Ndjdm$SeMDNxgVsRjRtRyeTLEgdhDbUwGMu3UF5ZMdyLIM4Z/3dezn1c42KwwGRgUxZUf5Oh3CzkArsoS8N3fkYT/SO/'
    enforce_password: True
  prevenda23:
    password: '$6$HYQRbm/OdXvd5faW$86oqLM6VIED9XU32Pcq7Njhn0v1MkJeOcrHi.3ZHXs.2aXriQC3OoVoWKWKFXqgGGEgDYkbSFvnwG95dipOky/'
    enforce_password: True
  prevenda24:
    password: '$6$BukMq/H2GLiGdVvP$IFNW0UdRVAeHIt01ftR91vZODKMMxgMSuvQXcr5qoNgqkJ6AK9no/iCibIUlvHBb2vyCZiWVi5Kfr.SY1r8Cd0'
    enforce_password: True
  prevenda34:
    password: '$6$ldqMtZRaPP8dWpo.$ed1zT5ShWZ03uPKgip6L1Ct3GN2dxoAvhc/IZjqbhuv9vdqX6d6Hn5UGupHXSEP9KE3Rjb2DvYW5iLU9EfbIo/'
    enforce_password: True
  destranca:
    password: '$6$QVcyawKF$t6zuSwnvNeH/Uj.rj.GsVdxcIt4U5.pKVqhI8cKHb6.NvLwn.uBhDQhnKPhiwIWFWti3eUwEJV92vkZoh/cbV1'
    enforce_password: True
    manage_bashrc: True
    sudouser: True
    sudo_rules:
      - ALL=NOPASSWD:/usr/dlc/bin/_mprshut,/bin/bash -c /srv/admcom/scripts/adm-byroot.sh
  crediario:
    password: '$6$w94zlYrnwfhlo$pUnJ0sysHblOatyPzA6JwLO65Q3Zs/SP2MMoHU6zDjFzpwFrCi2OyTBQIg9zBuEUGUozhpjtdMjXyNtu04FGl.'
    enforce_password: True
    manage_bashrc: True
    sudouser: True
    sudo_rules:
      - ALL=NOPASSWD:/bin/bash -c /srv/admcom/adm
  contabilidade:
    password: 'paQLgJT0vXaUY'
    enforce_password: True
    manage_bashrc: True
    sudouser: True
    sudo_rules:
      - ALL=NOPASSWD:/bin/bash -c /srv/admcom/adm
  scanner:
    password: '$1$LsMObKvh$zAxrWDRYKW/D82K84aAjL0'
    enforce_password: True
    home: /srv/admcom/cp
  quiosque:
    password: '$6$cs06akMpYjPvYx49$4qP4EeQO2a50Gpoc0N7XQXEOGBE.1rkrjtFWWdVUbI2HDYvyeLWkTyso7va.13h4vvGPsxP43HUvcEchJ9pMh1'
    enforce_password: True
  compras:
    password: '$6$7zOCWzsYTmlpfo0.$dtzflBp587Ca9TS9/yiUpoLLCB0Y7uySHZcFTS/zVicrqLvbCs90soJpsBAIphp.OmQaM0qz0n00FUVCq5vIL1'
    enforce_password: True
    manage_bashrc: True
    sudouser: True
    sudo_rules:
      - ALL=NOPASSWD:/bin/bash -c /srv/admcom/adm2
  sustentacao:
    password: '$6$QGBt/bbiWoNl6qqo$chq63J.p2.Da6TKbXyhPFrTCBQ1EDXMUAwZ8sdXy67fts8ejfqvQVFBmtlITjI.PCYL9jUU11A3MwnFfDGwGV1'
    enforce_password: True
  desliga:
    password: '$6$r6rVD1oUK3VQvkqP$AkJXxp0/KzDzC7lzidleWgPNXIuwtesTT/W.BWPPZPS8/KJtMab3fv03P9ww/HZK1FncbvtaUwZDwPtvQDe/E/'
    enforce_password: True
    manage_bashrc: True
    sudouser: True
    sudo_rules:
      - ALL=NOPASSWD:/bin/bash -c /srv/scripts/desliga.sh