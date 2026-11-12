set("log.stdout", true)

myplaylist = playlist(mode="randomize", reload_mode="watch", "/music")
radio = mksafe(myplaylist)

output.icecast(
  %mp3(bitrate=96),
  host="127.0.0.1",
  port=8000,
  password="mrsdgmSource2026",
  mount="/stream",
  name="mrsdgm vibes",
  genre="Chill / Vibes",
  radio
)
