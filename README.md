# tmux-fcitx-status
Plug and show the fcitx status on the right corner of tmux status bar

## Installation with [Tmux Plugin Manager]((https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:
```bash
set -g @plugin 'diphia/tmux-fcitx-status'
```

## Manual Installation

Clone the repository:
```bash
$ git clone https://github.com/Diphia/tmux-fcitx-status.git
```
Add this line to the end of `.tmux.conf`:
```bash
run-shell ~/tmux-fcitx-status/tmux-fcitx-status.tmux
```

## Liscense

[GPLv3](LICENSE)
