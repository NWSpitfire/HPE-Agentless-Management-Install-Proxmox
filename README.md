# HPE-Agentless-Management-Install-Proxmox
 
###### NOTE: USE AT YOUR OWN RISK.

**Version 1.0**

**CHANGELOG**

- V1.0 - Initial 

**ABOUT**

Script to install HPE's Agentless Management Service for Gen10 Servers.

Tested on;
-   CURRENTLY UNTESTED
-   DL360 GEN10

## Download & Run Script automatically.

1. Download and run script.

        curl -s https://raw.githubusercontent.com/NWSpitfire/HPE-Agentless-Management-Install-Proxmox/refs/heads/main/AMS-Script.sh | bash

2. AMS should display a green tick in ILO5 webUI. If not, try an ILO restart (or refresh browser session).

###### NOTE: It may take several minutes for system information to be populated in the ILO menu's regarding the AMS, even though the AMS itself will be reporting a green checkmark in ILO5.


## Download and Run Script seperately (for debugging or verification).

1. Download and run 

        curl https://raw.githubusercontent.com/NWSpitfire/HPE-Agentless-Management-Install-Proxmox/refs/heads/main/AMS-script.sh > AMS-Script.sh

2. Make Executable

        sudo chmod +x AMS-Script.sh

3. Run Script

        sudo bash AMS-Script.sh

4. Reboot


## Credits

(Credit to install commands)[https://forum.proxmox.com/threads/hp-agentless-management-service.74210/page-4]