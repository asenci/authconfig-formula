# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "authconfig/map.jinja" import authconfig with context %}

authconfig_config:
  file.managed:
    - user: root
    - group: root
    - mode: 0644
    - name: {{ authconfig.config }}
    - source: salt://authconfig/files/authconfig
    - template: jinja

  cmd.run:
    - name: authconfig --nostart --updateall
    - onchanges:
      - file: authconfig_config
