mkdir -p~/.ssh
cat << EOF > ~/.ssh/config
Host master
    HostName 172.25.199.161
    User kube-deploy

Host worker1
    HostName 172.25.199.162
    User kube-deploy

Host worker2
    HostName 172.25.199.163
    User kube-deploy
EOF

chmod 600 ~/.ssh/config

ssh-keygen -t ed25519 -N "" -f ~/.ssh/id_ed25519

ssh-copy-id master
ssh-copy-id worker1
ssh-copy-id worker2