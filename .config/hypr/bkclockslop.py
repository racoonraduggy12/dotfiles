#!/usr/bin/env python3

import gi

gi.require_version("Gtk", "3.0")
gi.require_version("GtkLayerShell", "0.1")

from gi.repository import Gtk, GLib, GtkLayerShell
from datetime import datetime


def ordinal(n):
    if 11 <= n % 100 <= 13:
        suffix = "th"
    else:
        suffix = {1: "st", 2: "nd", 3: "rd"}.get(n % 10, "th")

    return f"{n}{suffix}"


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
            GtkLayerShell.Edge.RIGHT,
            True
        )

        GtkLayerShell.set_margin(
            self,
            GtkLayerShell.Edge.TOP,
            40
        )

        GtkLayerShell.set_margin(
            self,
            GtkLayerShell.Edge.RIGHT,
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
        now = datetime.now()

        day_of_week = now.strftime("%A").upper()
        month = now.strftime("%B").upper()
        day_of_month = ordinal(now.day)
        time = now.strftime("%H:%M:%S")

        date_text = f"{day_of_week},   {month} {day_of_month}"
        clock_text = time

        self.label.set_markup(
            f'<span font="OPTIBankGothic 36" foreground="#220033">'
            f'{date_text}\n'
            f'</span>'
            f'<span font="OPTIBankGothic 92" foreground="#220033">'
            f'{clock_text}'
            f'</span>'
        )

        self.show_all()

        GLib.timeout_add(1000, self.update_clock)

        return False


win = ClockWindow()
win.connect("destroy", Gtk.main_quit)
win.show_all()

Gtk.main()

