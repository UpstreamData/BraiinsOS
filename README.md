# BraiinsOS
This contains everything you will need to use/install/configure S9 miners with Braiins OS+


# ---THESE WORK ON WINDOWS ONLY---

Go to https://braiins.com/os/plus/download and download the latest S9 Braiins Toolbox for Windows.
Put the downloaded file into all folders named "Files", one in the main, and one in the New Install folder.

--IPScanLocal.bat and IPScanVPN.bat--

If you are on a local network with miners running Braiins OS+, try using IPScanLocal.bat, and if that doesnt work OR you are not on a local network, use IPScanVPN.bat

These will output a text file called IPList.txt, whcih can then be used for all other parts of the process.

--Config--

Put all IPs in IPList.txt, then change bosminer.toml as needed with pool information.

Run Config.bat.

--Change Tuning--

Put all IPs in IPList.txt.

Run ChangeTuning.bat.

Enter wattage when prompted by the file.


--New Install--

Put all IPs in IPList.txt.

Run BraiinsInstall.bat
