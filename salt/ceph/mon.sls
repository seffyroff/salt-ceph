#/srv/salt/ceph/mon.sls
create_mons:
    module.run:
        - name: ceph.mon_create
        - cluster_name: 'ceph-homelab'
        - require:
            - pip: install_ceph_cfg
            - pkg: ceph