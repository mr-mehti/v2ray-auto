sudo chmod +x install.sh
sudo ./install.sh
sudo apt install nginx-full -y
sudo sysctl -w fs.file-max=12000500
sudo sysctl -w fs.nr_open=20000500
# Set the maximum number of open file descriptors
sudo ulimit -n 20000000
# Set the memory size for TCP with minimum, default and maximum thresholds 
sudo sysctl -w net.ipv4.tcp_mem='10000000 10000000 10000000'
# Set the receive buffer for each TCP connection with minumum, default and maximum thresholds
sudo sysctl -w net.ipv4.tcp_rmem='1024 4096 16384'
# Set the TCP send buffer space with minumum, default and maximum thresholds 
sudo sysctl -w net.ipv4.tcp_wmem='1024 4096 16384'
# The maximum socket receive buffer sizemem_max=16384
sudo sysctl -w net.core.rmem_max=16384  
# The maximum socket send buffer size
sudo sysctl -w net.core.wmem_max=16384
chmod +x bbr.sh && sudo bash bbr.sh && sudo ufw disable
