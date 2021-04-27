# disable spotlight indexing
sudo mdutil -i off -a
echo Edit script-mac.sh in your fastmac repo to auto-run commands in your Mac instances
sh <(curl -L https://nixos.org/nix/install) --darwin-use-unencrypted-nix-store-volume
source ./script-common.sh
