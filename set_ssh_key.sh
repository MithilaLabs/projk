#!/bin/bash
# set personal key

# Path to SSH key
ssh_key="$HOME/.ssh/id_ed25519_manu4linux"

# Loop through all Git repositories in the current directory
for dir in */.git; do
    repo_dir=$(dirname "$dir")
    echo "Setting SSH key for $repo_dir"
    git -C "$repo_dir" config core.sshCommand "ssh -i $ssh_key -F /dev/null"
done

echo "SSH keys configured for all repositories!"

