local status_ok, glow = pcall(require, "glow")
if not status_ok then
	return
end

glow.setup({
  style = "dark",
  width = 190,
})
