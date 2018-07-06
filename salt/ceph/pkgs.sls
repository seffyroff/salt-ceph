ceph_pkgrepo:
    pkgrepo.managed:
        - key_url: 'https://download.ceph.com/keys/release.asc' 
        - name: deb https://download.ceph.com/debian-luminous/ xenial main
        - architectures: amd64

ceph:
    pkg.installed

install_ceph_cfg:
    pip.installed:
        - name: ceph_cfg
        - editable: git+https://github.com/oms4suse/python-ceph-cfg.git#egg=ceph_cfg