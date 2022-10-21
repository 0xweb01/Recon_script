#!/bin/bash
# Script to easily install ProjectDiscovery recon tools
# The script assumes that you launch the script from your /home/

# Edit the path below
GOBIN=/home/<USER>/go/bin
LINKDIR=/usr/local/bin/

# Tool list
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
go install -v github.com/projectdiscovery/interactsh/cmd/interactsh-client@latest
go install -v github.com/projectdiscovery/asnmap/cmd/asnmap@latest
go install -v github.com/projectdiscovery/mapcidr/cmd/mapcidr@latest
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
go install -v github.com/projectdiscovery/tlsx/cmd/tlsx@latest
go install -v github.com/projectdiscovery/notify/cmd/notify@latest
go install -v github.com/projectdiscovery/uncover/cmd/uncover@latest
go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest

# Create symbolic link in order to launch tools from anywhere
sleep 2
ls $GOBIN > tool-list.txt
for i in $(cat tool-list.txt); do sudo ln -s $GOBIN/$i $LINKDIR/$i; done

project-discovery-tools.sh
Displaying project-discovery-tools.sh.
