## 🐧 Install MPD & MPC (Debian)

Install MPD and MPC using APT:

```bash
sudo apt update
sudo apt install mpd mpc
```

---

## ▶️ Run MPD Manually

If you're using a custom configuration file, start MPD with:

```bash
mpd ~/.config/mpd/mpd.conf
```

---

## ✅ Check if MPD is Running

You can verify that MPD is running using any of the following commands:

### Check MPD status

```bash
mpc status
```

If MPD is not running, you'll see an error such as:

```text
MPD error: Connection refused
```

### Check the listening port

```bash
lsof -i TCP:6600
```

> `6600` is the default MPD port. Change it if you've configured a different port.

### Check the running process

```bash
pgrep -af mpd
```

This should show the running MPD process along with the path to your `mpd.conf`.

---

## 🔄 Restart MPD

Stop the running instance:

```bash
pkill mpd
```

or

```bash
killall mpd
```

Then start it again:

```bash
mpd ~/.config/mpd/mpd.conf
```

You can also create a shell alias for quicker restarts if desired.
