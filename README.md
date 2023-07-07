# native-instruments-uninstaller
shell script to uninstall single instrument

## usage
First you'll need to find the instrument name. You can find a list in `/Library/Application Supporot/Native Instruments/`.

Then run script with sudo:
```bash
❯ sudo ./remove-instrument.sh                                                                                                                                                                                              native-instruments-uninstaller -> main ? !
Enter Native Instrument Library: Action Strikes

FOUND: /Users/Shared/Action Strikes Library
FOUND: /Users/user1/Library/Preferences/com.native-instruments.Action Strikes.plist
FOUND: /Library/Preferences/com.native-instruments.Action Strikes.plist
FOUND: /Library/Application Support/Native Instruments/Action Strikes
FOUND: /Library/Application Support/Native Instruments/Service Center/Action Strikes.xml
Do you want to remove these files/folders?y
All Done. Restart computer.

```
