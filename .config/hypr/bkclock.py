#!/usr/bin/env python3

import gi

gi.require_version("Gtk", "3.0")
gi.require_version("GtkLayerShell", "0.1")

from gi.repository import Gtk, GLib, GtkLayerShell
from datetime import datetime


class ClockWindow(Gtk.Window):
    def __init__(self):
        Gtk.Window.__init__(self)

        GtkLayerShell.init_for_window(self)

        GtkLayerShell.set_layer(
            self,
            GtkLayerShell.Layer.BACKGROUND
        )

        GtkLayerShell.set_anchor(
            self,
            GtkLayerShell.Edge.TOP,
            True
        )

        GtkLayerShell.set_anchor(
            self,
            GtkLayerShell.Edge.LEFT,
            True
        )

        GtkLayerShell.set_margin(
            self,
            GtkLayerShell.Edge.TOP,
            40
        )

        GtkLayerShell.set_margin(
            self,
            GtkLayerShell.Edge.LEFT,
            40
        )

        GtkLayerShell.set_keyboard_mode(
            self,
            GtkLayerShell.KeyboardMode.NONE
        )

        self.set_decorated(False)
        self.set_app_paintable(True)

        self.label = Gtk.Label()

        self.add(self.label)

        self.update_clock()

    def update_clock(self):
        now = datetime.now().strftime("%H:%M:%S")

        self.label.set_markup(
            #f'<span font="JetBrains Mono 72" foreground="#d8dee9ff">{now}</span>
            f'<span font="OPTIBankGothic 72" foreground="#d8dee9ff">{now}</span>'
        )

        GLib.timeout_add(1000, self.update_clock)

        self.show_all()

        return False


win = ClockWindow()
win.connect("destroy", Gtk.main_quit)
win.show_all()

Gtk.main()
