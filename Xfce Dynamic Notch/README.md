# XFCE Panel Pill/Notch

A floating pill/notch-style XFCE panel using pure GTK CSS. No scripts, no extra tools — just panel settings + one CSS file.

![Items](screenshots/items.png)

## 1. Install the CSS

```bash
mkdir -p ~/.config/gtk-3.0
cp gtk.css ~/.config/gtk-3.0/gtk.css
```

Then enable the compositor (required, or you'll just see a solid box instead of rounded corners/shadow):
```bash
xfwm4-settings
```
Compositor tab → check **"Enable display compositing."**

## 2. Create your panel

Right-click desktop → **Panel → Add New Panel**. Then right-click it → **Panel Preferences** and match the settings below.

> ⚠️ The screenshots below show **Panel 3** in the panel dropdown at the top of the preferences window (mine, since I already have other panels). Yours will likely be a different number (Panel 1, 2, 4, etc. depending on how many panels you already have) — that's fine, the number itself doesn't matter. Just make sure you're editing the *new* panel you just created.

### Display tab
<img width="384" height="626" alt="Image" src="https://github.com/user-attachments/assets/2921b80a-684e-4053-b860-2fe9ac3cc52d" />

- Mode: `Horizontal`
- Lock panel: ✅ on
- Automatically hide the panel: `Intelligently`
- Row size: `21` px
- Number of rows: `1`
- Border width: `0` px
- Length: `16` px
- Automatically increase the length: ✅ on

### Appearance tab
<img width="384" height="626" alt="Image" src="https://github.com/user-attachments/assets/7190fb7f-f44c-4661-a627-3152ee8846dc" />

- Dark mode: ✅ on
- Background style: `None (use system style)`
- Adjust icon size automatically: ✅ on
- Opacity — Enter: `90`, Leave: `90`

### Items tab
![Items settings](<img width="384" height="626" alt="Image" src="https://github.com/user-attachments/assets/2921b80a-684e-4053-b860-2fe9ac3cc52d" />)

Add these items in this order (**+ Add** button, bottom left):
1. Separator
2. Workspace Switcher
3. Window Buttons
4. Separator
5. Clock
6. Separator
7. Power Manager Plugin
8. PulseAudio Plugin
9. Notification Plugin
10. Status Tray Plugin
11. Action Buttons
12. Separator

Use the up/down arrows on the right to reorder if needed.

## 3. Apply

```bash
xfce4-panel -r
```

You should now have the same floating pill panel shown in the screenshots.

## Customizing

Edit `~/.config/gtk-3.0/gtk.css`:
- `border-radius` — corner shape (`0px 0px 20px 20px` = flat top / rounded bottom, notch look)
- `background-color` — pill color/opacity
- `box-shadow` — how much it "floats"

Reload after any edit:
```bash
xfce4-panel -r
```
