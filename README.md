# motd

A portable fast MOTD similar to Ubuntu's.

Long story short:

![screenshot](screenshot.png)


## Installation

1. Copy `motd.sh` to `/etc`.
2. Put this into your `~/.config/fish/config.fish`:

```fish
if [ xterm != "dumb" ]
  bash /etc/motd.sh; or echo "Failed to show MOTD."
end
```

If you don't like scripts in `/etc`, feel free to choose any other location.
