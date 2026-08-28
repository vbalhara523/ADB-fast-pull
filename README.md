## Use
This script adds a custom "Move" option to the right-click context menu in the Nemo file manager. It allows for the direct transfer of files from an Android device to a Linux PC using ADB. Upon clicking "Move," a visual directory selection popup appears, allowing the user to choose the destination folder on the PC. The original file on the Android device is automatically deleted after a successful transfer.

## Expected Improvements
* **Time Saved:** Eliminates the need to open a terminal, locate file paths, and manually execute adb commands.
* **Workflow Efficiency:** Transforms a multi-step command-line process into a two-click graphical interface operation.
* **Visual Feedback:** Replaces terminal output with native desktop notifications for transfer progress and completion.

## Prerequisites
* Linux Mint (Nemo File Manager)
* ADB
* Zenity

## Installation
Run the setup script:
chmod +x setup.sh
./setup.sh

## Usage

1. Right-click any file.
2. Click **Move**.
3. Select the destination folder in the popup window.
