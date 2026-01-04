# Keep a decent command history
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = File.expand_path("~/.irb_history")

# Nicer, shorter prompt (very common)
IRB.conf[:PROMPT_MODE] = :SIMPLE

# Optional: keep result history too (lets you reference prior results)
IRB.conf[:EVAL_HISTORY] = 1000

IRB.conf[:AUTO_INDENT] = true
