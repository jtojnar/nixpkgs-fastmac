source /nix/var/nix/profiles/default/etc/profile.d/nix.sh
export PATH="/nix/var/nix/profiles/default/bin:$PATH"
nix-env -i \
    -A bat \
    -A exa \
    -A fd \
    -A gh \
    -A nano \
    -A ripgrep \
    -f channel:nixos-unstable

# Enable nano syntax highlighting
mkdir -p ~/.config/nano
echo 'include "'$(nix-build channel:nixos-unstable --no-out-link -A nano)'/share/nano/*.nanorc"' >> ~/.config/nano/nanorc
