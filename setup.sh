#!/bin/bash
mkdir -p ~/.local/bin
mkdir -p ~/.local/share/nemo/actions

cat << 'EOF' > ~/.local/bin/adb_move.sh
#!/bin/bash
DEST=$(zenity --file-selection --directory --title="Select Destination Directory")
if [ -z "$DEST" ]; then
    exit 0
fi
notify-send "ADB Pull" "Moving files to $DEST..."
for f in "$@"; do
    adb pull "$f" "$DEST/" && rm -rf "$f"
done
notify-send "ADB Pull" "Move complete!"
EOF

chmod +x ~/.local/bin/adb_move.sh

cat << 'EOF' > ~/.local/share/nemo/actions/adb-move.nemo_action
[Nemo Action]
Name=Move
Exec=sh ~/.local/bin/adb_move.sh %F
Icon-Name=smartphone
Selection=notnone
Extensions=any;
EOF

nemo -q
