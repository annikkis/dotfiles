require("fidget").setup({
  text = {
    spinner = "dots",
    done = "✔",
    commenced = "Started...",
    completed = "Completed",
  },
  align = {
    bottom = true,
    right = true,
  },
  timer = {
    spinner_rate = 125,
    fidget_decay = 2000,
    task_decay = 1000,
  },
  window = {
    relative = "win",
    blend = 100,
    zindex = nil,
    border = "none",
  },
})
