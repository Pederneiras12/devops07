nfs:
  server:
    exports: 
      /opt/ltsp: "*(ro,no_root_squash,async,no_subtree_check)"
      /usr/dlc: "*(ro,no_root_squash,async,no_subtree_check)"
      /home: "*(rw,no_root_squash,async,no_subtree_check)"
      /srv: "*(rw,no_root_squash,async,no_subtree_check)"
      /opt/P2K-POS: "*(rw,no_root_squash,async,no_subtree_check)"