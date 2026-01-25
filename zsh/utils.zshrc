# Utility functions

# tree but only print directories
# by default the depth level is 1 but an argument can be passed
# treed 3 - to have three levels of depth
treed() {
  tree -AdL ${1:-1}
}

# List only unique lines
uniqlines() {
  sort $1 | uniq -u
}

# Show system information
sysinfo() {
  echo "CPU: $(sysctl -n machdep.cpu.brand_string)"
  echo "RAM: $(top -l 1 -s 0 | grep PhysMem | sed 's/^[[:space:]]*//')"
  echo
  system_profiler SPDisplaysDataType
}

# Copy pwd to clipboard
pwdd(){ local dir="$PWD"; print -rn -- "$dir" | pbcopy; echo "copied: $dir to clipboard."; }

# Execute fkill and it'll ask for which process to kill
fkill() {
  local pids
  pids=$(ps -eo pid=,command= | fzf -m --prompt='kill -9> ' --header='TAB to multi-select' | awk '{print $1}')
  [[ -n "$pids" ]] || return 0
  echo "$pids" | xargs kill -9
}
