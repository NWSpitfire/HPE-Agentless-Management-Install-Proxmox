# HPE Agentless Management installer for PVE 8

#V1.0

#! /bin/bash


echo "Welcome to the Agentless Management Installer for PVE8 (Debian)"
echo "WARNING: Run this script at your own risk. This is not an HP Enterprise script!"
echo "This is for HPE Gen10 Servers - Tested with DL360 Gen10"
echo "Press Ctrl+C within 8 seconds to cancel installation"

echo ""

#wait 8s
sleep 8s

echo "--- Beginning Install ---"

echo ""

echo "Backing Up sources.list in case of issues and adding HPE repository to sources.list"
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

echo "# HP Agentless Management Service for iLO - added manually" | sudo tee -a /etc/apt/sources.list

echo "deb http://downloads.linux.hpe.com/SDR/repo/mcp bookworm/current non-free" | sudo tee -a /etc/apt/sources.list

echo "Adding HPE GPG Keys"

curl -sS https://downloads.linux.hpe.com/SDR/hpPublicKey2048.pub | gpg --dearmor > /etc/apt/trusted.gpg.d/hpPublicKey2048.gpg
curl -sS https://downloads.linux.hpe.com/SDR/hpPublicKey2048_key1.pub | gpg --dearmor > /etc/apt/trusted.gpg.d/hpPublicKey2048_key1.gpg
curl -sS https://downloads.linux.hpe.com/SDR/hpePublicKey2048_key1.pub | gpg --dearmor > /etc/apt/trusted.gpg.d/hpePublicKey2048_key1.gpg

echo "Installing Packages"
echo ""

apt update
apt install ssa ssacli ssaducli storcli amsd