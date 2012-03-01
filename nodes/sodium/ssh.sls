
extend:
  /etc/ssh/sshd_config:
    file:
      - context:
          allowed_users: ["eivind"]
