#/srv/salt/top.sls
base:
    'celery.lan':
        - ceph.pkgs
        - ceph.mon