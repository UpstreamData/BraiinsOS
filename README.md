# BraiinsOS
This contains everything you will need to use/install/configure S9 miners with Braiins OS+

THESE WORK ON WINDOWS 10 ONLY

# IMPORTANT FOR INSTALL
Go to https://braiins.com/os/plus/download and download the latest S9 Braiins Toolbox for Windows.
Put the downloaded file into all folders named "Files", one in the main, and one in the New Install folder.

# IPScanLocal.bat and IPScanVPN.bat

If you are on a local network with miners running Braiins OS+, try using IPScanLocal.bat, and if that doesnt work OR you are not on a local network, use IPScanVPN.bat

IPScanLocal.bat requires Braiins Toolbox.

These files are configured to scan on a network with IP addresses ranging from 192.168.1.5 to 192.168.1.255

If your network is not configured like this, edit these files, search for a line in IPScanVPN containing "192.168.1." and replace that with the first 3 parts of your local network IPs, such as "10.10.10.", the last numbers after the dot are filled automatically.  For IPScanLocal search for a line containing "192.168.1.0" and replace that with your local network IPs, with the last number being 0, such as "10.10.10.0".

These will output a text file called IPList.txt, which can then be used for all other parts of the process.

# Config

Put all IPs in IPList.txt, then change bosminer.toml as needed with pool information.

Run Config.bat.

# Change Tuning

Put all IPs in IPList.txt.

Run ChangeTuning.bat.

Enter wattage when prompted by the file.


# New Install

Ensure bosplustoolbox.exe is inside the Files Folder

Put all IPs in IPList.txt.

Run BraiinsInstall.bat
