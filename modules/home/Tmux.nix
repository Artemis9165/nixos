{ pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    plugins = with pkgs.tmuxPlugins; [
      onedark-theme
    ];
    extraConfig = ''
      set -g default-terminal "tmux-256color"
      set -g mouse on
      set -g set-clipboard on
      set -g base-index 1
      set -g pane-base-index 1
      set -ga terminal-overrides ",*:RGB"
      set-option -g renumber-windows on

      set-window-option -g pane-base-index 1
      set-window-option -g mode-keys vi

      unbind C-b
      set -g prefix C-u
      bind-key C-u send-prefix

      unbind %
      unbind '"'
      bind | split-window -h -c "#{pane_current_path}"
      bind - split-window -v -c "#{pane_current_path}"

      bind h select-pane -L
      bind j select-pane -D
      bind k select-pane -U
      bind l select-pane -R

      bind -n C-h select-pane -L
      bind -n C-j select-pane -D
      bind -n C-k select-pane -U
      bind -n C-l select-pane -R

      bind -n C-1 select-window -t 1
      bind -n C-2 select-window -t 2
      bind -n C-3 select-window -t 3
      bind -n C-4 select-window -t 4
      bind -n C-5 select-window -t 5
      bind -n C-6 select-window -t 6
      bind -n C-7 select-window -t 7
      bind -n C-8 select-window -t 8
      bind -n C-9 select-window -t 9

      bind-key -T copy-mode-vi v send-keys -X begin-selection
      bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
      bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel
      unbind -T copy-mode-vi MouseDragEnd1Pane
    '';
  };
}
