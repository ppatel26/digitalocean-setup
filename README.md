# DigitalOcean Droplet Setup Scripts

Setting up a droplet/server takes plenty time. This is my attempt on automating the process a tad bit. Read the comments for different setup script to get an idea of whats being installed

- `lg-kdb-slim.sh` : kdbq+ (32-bit) + unixODBC( w/ postgres driver) + q essential libraries. A super slim kdbq setup


`/dev-scripts/` - Reserved for in-progress/development script

## Quick Start 

To use the functionality within this repository straight away:

1) Make a new DigitalOcean Droplet
2) Copy servers ip-address
3) Select appropriate setup script 
4) RUN<sup>*</sup> `bash install.sh <IP_ADDRESS> <SETUP_SCRIPT>`

<sup>*</sup> input your droplet/server `password` when asked 

Example:
```
> bash install.sh 134.122.21.86 lg-kdb-slim.sh
root@134.122.21.86's password:
```