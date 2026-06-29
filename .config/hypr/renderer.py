import json, jinja2

# Load matugen palette
with open("/home/daniel/palette.json") as f:
    palette = json.load(f)["colors"]

# Load template
with open("/home/daniel/.config/matugen/templates/hyprland.conf.template") as f:
    template = jinja2.Template(f.read())

# Render template with palette
rendered = template.render(colors=palette)

# Write config
with open("/home/daniel/.config/hypr/hyprland.conf", "w") as f:
    f.write(rendered)

with open("/home/daniel/palette.json") as f:
    palette = json.load(f)["colors"]

# Load template
with open("/home/daniel/.config/matugen/templates/gtk.css.template") as f:
    template = jinja2.Template(f.read())

# Render template with palette
rendered = template.render(colors=palette)

# Write config
with open("/home/daniel/.config/gtk-3.0/gtk.css", "w") as f:
    f.write(rendered)

with open("/home/daniel/palette.json") as f:
    palette = json.load(f)["colors"]

# Load template
with open("/home/daniel/.config/matugen/templates/gtk4.css.template") as f:
    template = jinja2.Template(f.read())

# Render template with palette
rendered = template.render(colors=palette)

# Write config
with open("/home/daniel/.config/gtk-4.0/gtk.css", "w") as f:
    f.write(rendered)

with open("/home/daniel/palette.json") as f:
    palette = json.load(f)["colors"]

# Load template
with open("/home/daniel/.config/matugen/templates/Extramostbestest.colors.template") as f:
    template = jinja2.Template(f.read())

# Render template with palette
rendered = template.render(colors=palette)

# Write config
with open("/home/daniel/.local/share/color-schemes/Extramostbestest.colors", "w") as f:
    f.write(rendered)

with open("/home/daniel/palette.json") as f:
    palette = json.load(f)["colors"]

# Load template
with open("/home/daniel/.config/matugen/templates/kitty.conf.template") as f:
    template = jinja2.Template(f.read())

# Render template with palette
rendered = template.render(colors=palette)

# Write config
with open("/home/daniel/.config/kitty/kitty.conf", "w") as f:
    f.write(rendered)

with open("/home/daniel/palette.json") as f:
    palette = json.load(f)["colors"]

# Load template
with open("/home/daniel/.config/matugen/templates/config.jsonc.template") as f:
    template = jinja2.Template(f.read())

# Render template with palette
rendered = template.render(colors=palette)

# Write config
with open("/home/daniel/.config/fastfetch/config.jsonc", "w") as f:
    f.write(rendered)

with open("/home/daniel/.config/matugen/templates/Bestest.colors.template") as f:
    template = jinja2.Template(f.read())

# Render template with palette
rendered = template.render(colors=palette)

# Write config
with open("/home/daniel/.local/share/color-schemes/Bestest.colors", "w") as f:
    f.write(rendered)

with open("/home/daniel/.config/matugen/templates/style.css.template") as f:
    template = jinja2.Template(f.read())

# Render template with palette
rendered = template.render(colors=palette)

# Write config
with open("/home/daniel/.config/wofi/style.css", "w") as f:
    f.write(rendered)

with open("/home/daniel/.config/matugen/templates/settings.conf.template") as f:
    template = jinja2.Template(f.read())

# Render template with palette
rendered = template.render(colors=palette)

# Write config
with open("/home/daniel/.config/linux_clock_hud/settings.conf", "w") as f:
    f.write(rendered)

