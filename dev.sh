#!/bin/bash
# if you don't have when-changed installed, see http://www.kelunik.com/post/autoreload-gnomeshell-theme-on-change
cd $(dirname $(readlink -f "$0"))
when-changed src/gnome-shell/gnome-shell.css "./zip.sh && gdbus call --session --dest org.gnome.Shell --object-path /org/gnome/Shell --method org.gnome.Shell.Eval 'Main.loadTheme();'"
