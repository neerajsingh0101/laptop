# Auto-update laptop repo every 7 days
_laptop_auto_update() {
  local update_stamp="$HOME/.laptop_update"
  local now=$(date +%s)
  local last=0
  local days=1

  if [[ -f "$update_stamp" ]]; then
    last=$(cat "$update_stamp")
  fi

  if (( (now - last) >= (days * 86400) )); then
    echo "$now" > "$update_stamp"
    (
      cd "$LAPTOPD" &&
      git fetch --quiet origin 2>/dev/null &&
      if [[ $(git rev-parse HEAD) != $(git rev-parse @{u}) ]]; then
        echo "[laptop] A new version of the laptop script is available."
        echo "[laptop] Updating... hang tight."
        git pull --quiet origin main
        echo "[laptop] Done! Laptop script is now up to date."
      fi
    )
  fi
}
_laptop_auto_update
