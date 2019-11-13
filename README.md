# tmux-fcitx-status
Plug and show the fcitx status on the right corner of tmux status bar

## Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:
```bash
set -g @plugin 'diphia/tmux-fcitx-status'
```
then press Prefix + I to install the listed plugins

## Manual Installation

Clone the repository:
```bash
$ git clone https://github.com/Diphia/tmux-fcitx-status.git
```
Add this line to the end of `.tmux.conf`:
```bash
run-shell ~/tmux-fcitx-status/tmux-fcitx-status.tmux
```

## Add Placeholder

add `#{fcitx_status}` to `.tmux.conf` like below:
```bash
set -g status-right "#{fcitx_status} #[bg=#0087ff] #H #[bg=#00346e] %A, %B %e %I:%M %p "
```

## Customization

Use options below to set the background color in diffent status:

- `@fcitx_status_en` - background color while inputing English, default value is `#[bg=#80827f]`
- `@fcitx_status_zh` - background color while inputing Chinese, default value is `#[bg=#1ad626]`
- `@fcitx_status_down` - background color while fcitx is down, default value is `#[bg=#f21000]`

## Limitation

You need to set var `status-interval` in a low value like 1 or 2 in `.tmux.conf`

## Liscense

[GPLv3](LICENSE)
