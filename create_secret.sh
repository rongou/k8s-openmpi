#!/usr/bin/env bash

ssh-keygen -t ed25519 -f id_ed25519 -N ""
kubectl create secret generic ssh-keys --from-file=id_ed25519 --from-file=id_ed25519.pub
rm id_ed25519 id_ed25519.pub
