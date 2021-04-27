source ~/.nix-profile/etc/profile.d/nix.sh
nix-env -i \
    -A bat \
    -A exa \
    -A fd \
    -A gh \
    -A ripgrep \
    -f channel:nixos-unstable
