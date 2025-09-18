#!/bin/bash

PYWAL_COLORS="$HOME/.cache/wal/colors.sh"

if [ ! -f "$PYWAL_COLORS" ]; then
  echo "Pywal colors.sh not found!"
  exit 1
fi

source "$PYWAL_COLORS"

GTK3_CSS="$HOME/.config/gtk-3.0/gtk.css"
GTK4_CSS="$HOME/.config/gtk-4.0/gtk.css"

mkdir -p "$(dirname "$GTK3_CSS")"
mkdir -p "$(dirname "$GTK4_CSS")"

css="/* Auto-generated GTK CSS with Pywal background/foreground colors */

* {
    background-color: $background;
}

/* Window and main background */
window {
    background-color: $background;
    color: $foreground;
    font-family: 'Hack Nerd Font';
    font-size: 12pt;
}

/* Buttons */
button, .button, button:backdrop {
    background-color: $foreground;
    color: $background;
    border-radius: 5px;
    border: 1px solid $foreground;
    padding: 6px 12px;
}

button:hover, button:focus {
    background-color: $foreground;
    color: $background;
}

/* Entry fields, comboboxes, textviews, spinbuttons */
entry, textview, combobox, spinbutton {
    background-color: $background;
    color: $foreground;
    border: 1px solid $foreground;
    border-radius: 4px;
    padding: 4px 6px;
}

/* Scrollbars */
scrollbar {
    background-color: transparent;
    border-radius: 6px;
    min-width: 12px;
    min-height: 12px;
}

scrollbar slider {
    background-color: $foreground;
    border-radius: 6px;
    min-width: 12px;
    min-height: 12px;
}

/* Selected items in lists and treeviews */
treeview:selected, listview:selected, treeview:focus:selected, listview:focus:selected, selection {
    background-color: $foreground;
    color: $background;
}

/* Hovered items */
treeview:hover, listview:hover {
    background-color: $background;
    color: $foreground;
}

/* Folder and file icons using symbolic colors */
.treeview .icon {
    color: $foreground;
}

/* Tooltip styling */
tooltip {
    background-color: $background;
    color: $foreground;
    border-radius: 4px;
    padding: 6px 8px;
    border: 1px solid $foreground;
}

/* Header bars and title bars */
.header-bar, headerbar {
    background-color: $background;
    color: $foreground;
    border-bottom: 1px solid $foreground;
}

/* Menus */
menu, menuitem {
    background-color: $background;
    color: $foreground;
}

menuitem:hover {
    background-color: $foreground;
    color: $background;
}

/* Check buttons and toggles */
checkbutton, togglebutton {
    background-color: transparent;
    color: $foreground;
}

checkbutton:checked, togglebutton:checked {
    background-color: $foreground;
    color: $background;
    border-radius: 4px;
}

/* Tabs (GTK 3 & 4) */
notebook tab {
    background-color: $background;
    color: $foreground;
    border-radius: 6px 6px 0 0;
    padding: 6px 12px;
}

notebook tab:checked {
    background-color: $foreground;
    color: $background;
}

/* Toolbars */
.toolbar, .toolbar button {
    background-color: $background;
    color: $foreground;
    border: none;
}

/* Tooltip arrows */
tooltip > arrow {
    background-color: $background;
}

/* Dialog windows */
dialog {
    background-color: $background;
    color: $foreground;
    border-radius: 8px;
}

/* Progress bars */
progress {
    background-color: $background;
    border-radius: 6px;
}

progress trough {
    background-color: $foreground;
}

progress progressbar {
    background-color: $foreground;
}

/* Tooltips */
tooltip {
    background-color: $background;
    color: $foreground;
}

/* Add more as needed */

"

echo "$css" > "$GTK3_CSS"
echo "$css" > "$GTK4_CSS"

echo "Generated comprehensive GTK CSS with Pywal colors at:"
echo "  $GTK3_CSS"
echo "  $GTK4_CSS"
