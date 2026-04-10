import json, jinja2

# Load matugen palette
with open("~/palette.json") as f:
    palette = json.load(f)["colors"]

# Load template
with open("~/.config/matugen/templates/hyprland.conf.template") as f:
    template = jinja2.Template(f.read())

# Render template with palette
rendered = template.render(colors=palette)

# Write config
with open("~/.config/hypr/hyprland.conf", "w") as f:
    f.write(rendered)

with open("~/palette.json") as f:
    palette = json.load(f)["colors"]

# Load template
with open("~/.config/matugen/templates/gtk.css.template") as f:
    template = jinja2.Template(f.read())

# Render template with palette
rendered = template.render(colors=palette)

# Write config
with open("~/.config/gtk-3.0/gtk.css", "w") as f:
    f.write(rendered)

with open("~/palette.json") as f:
    palette = json.load(f)["colors"]

# Load template
with open("~/.config/matugen/templates/gtk4.css.template") as f:
    template = jinja2.Template(f.read())

# Render template with palette
rendered = template.render(colors=palette)

# Write config
with open("~/.config/gtk-4.0/gtk.css", "w") as f:
    f.write(rendered)

with open("~/palette.json") as f:
    palette = json.load(f)["colors"]

# Load template
with open("~/.config/matugen/templates/Extramostbestest.colors.template") as f:
    template = jinja2.Template(f.read())

# Render template with palette
rendered = template.render(colors=palette)

# Write config
with open("~/.local/share/color-schemes/Extramostbestest.colors", "w") as f:
    f.write(rendered)

with open("~/palette.json") as f:
    palette = json.load(f)["colors"]

# Load template
with open("~/.config/matugen/templates/kitty.conf.template") as f:
    template = jinja2.Template(f.read())

# Render template with palette
rendered = template.render(colors=palette)

# Write config
with open("~/.config/kitty/kitty.conf", "w") as f:
    f.write(rendered)

with open("~/palette.json") as f:
    palette = json.load(f)["colors"]

# Load template
with open("~/.config/matugen/templates/config.jsonc.template") as f:
    template = jinja2.Template(f.read())

# Render template with palette
rendered = template.render(colors=palette)

# Write config
with open("~/.config/fastfetch/config.jsonc", "w") as f:
    f.write(rendered)

with open("~/.config/matugen/templates/Bestest.colors.template") as f:
    template = jinja2.Template(f.read())

# Render template with palette
rendered = template.render(colors=palette)

# Write config
with open("~/.local/share/color-schemes/Bestest.colors", "w") as f:
    f.write(rendered)

with open("~/.config/matugen/templates/style.css.template") as f:
    template = jinja2.Template(f.read())

# Render template with palette
rendered = template.render(colors=palette)

# Write config
with open("~/.config/wofi/style.css", "w") as f:
    f.write(rendered)

with open("~/.config/matugen/templates/settings.conf.template") as f:
    template = jinja2.Template(f.read())

# Render template with palette
rendered = template.render(colors=palette)

# Write config
with open("~/.config/linux_clock_hud/settings.conf", "w") as f:
    f.write(rendered)

