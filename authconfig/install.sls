# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "authconfig/map.jinja" import authconfig with context %}

authconfig_pkg:
  pkg.installed:
    - name: {{ authconfig.pkg }}
    - require_in:
      - file: authconfig_config
