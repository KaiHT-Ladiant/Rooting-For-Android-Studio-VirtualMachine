# Rooting For Android Studio VirtualMachine

This project provides a batch script (`run.bat`) to automate rooting Android Studio Virtual Devices (AVDs) using Magisk. It simplifies the process by integrating with [newbit1/rootAVD](https://github.com/newbit1/rootAVD) and guiding users through the setup.

## Features
- **Automated root process**: Executes rooting via `rootAVD.bat` after validation
- **Input validation**: Ensures correct user responses (Y/N) and AVD version compatibility
- **Prerequisite checks**: Confirms Android Studio installation and AVD runtime status
- **Git integration**: Automatically clones the `rootAVD` repository

## Prerequisites
- [**Android Studio**](https://developer.android.com/studio) installed
- **AVD created** with Google Play Store APIs (x86_64 architecture)
- [**Git**](https://git-scm.com/) for repository cloning

---

## Usage

### Step 1: Run the Script
Execute in Command Prompt:
```powershell
.\run.bat
```
### Step 2: Follow Prompts
1. Confirm Android Studio installation (`Y`)
2. Enter **AVD version** (e.g. `33` for Android 13)
3. Ensure AVD is running before proceeding (`Y`)

Example workflow:
```powershell
[] Are you AndroidStudio Installed? (Y/N): Y
[+] Version of AVD Emulator: 33
[] Are you Running AVD Now? (Y/N): Y
```
### Step 3: Completion
- Script clones `rootAVD`, patches AVD's ramdisk, and installs Magisk
- Grant Superuser access when prompted on AVD

---

## Notes
- :warning: **Run as Administrator** for file system operations
- :computer: **Compatibility**: x86_64 AVDs with Google Play Store APIs
- :white_check_mark: **Post-root verification**: 
```powershell
adb shell su
```

---

## Troubleshooting
| Issue | Solution |
|-------|----------|
| `adb` not recognized | Add to PATH: `%LOCALAPPDATA%\Android\Sdk\platform-tools` |
| Rooting fails | Use **Google Play Store APIs** (not "Vanilla") |
| Script errors | Delete `rootAVD` folder and rerun |

---

## References
- [rootAVD Documentation](https://github.com/newbit1/rootAVD)
- [Android Emulator Setup Guide](https://source.android.com/docs/core/tests/vts/shell-commands)