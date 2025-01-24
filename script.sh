sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

echo "# HP Agentless Management Service for iLO - added manually" | sudo tee -a /etc/apt/sources.list

echo "deb http://downloads.linux.hpe.com/SDR/repo/mcp bookworm/current non-free" | sudo tee -a /etc/apt/sources.list

curl -sS https://downloads.linux.hpe.com/SDR/hpPublicKey2048.pub | gpg --dearmor > /etc/apt/trusted.gpg.d/hpPublicKey2048.gpg
curl -sS https://downloads.linux.hpe.com/SDR/hpPublicKey2048_key1.pub | gpg --dearmor > /etc/apt/trusted.gpg.d/hpPublicKey2048_key1.gpg
curl -sS https://downloads.linux.hpe.com/SDR/hpePublicKey2048_key1.pub | gpg --dearmor > /etc/apt/trusted.gpg.d/hpePublicKey2048_key1.gpg

apt update
apt install ssa ssacli ssaducli storcli amsd