# ZSH Setup Guide
For Personal Use Only  

## Installing Zsh and OhMyZsh on Ubuntu

### **Method 1**: Direct Paste on the Terminal
For the most straightforward installation, copy and paste the following commands directly into your terminal:
```bash
bash -c $(wget -O- https://raw.githubusercontent.com/OmgAvy/Linux/main/install_zsh_ohmyzsh.sh)
```
For additional plugins, use the following:

```zsh
bash -c "$(wget -O- https://raw.githubusercontent.com/OmgAvy/Linux/main/install_zsh_ohmyzsh_plugins.sh)"
```


### **Method 2**: Offline Installation
If you prefer an offline installation, download the scripts and execute them locally:
Make sure to give execute permissions to the downloaded scripts before running them. 
```bash
chmod +x install_zsh_ohmyzsh.sh install_zsh_ohmyzsh_plugins.sh
```
```zsh
./install_zsh_ohmyzsh.sh
```

```zsh
./install_zsh_ohmyzsh_plugins.sh
```
This guide helps enhance your Ubuntu environment with Zsh and Oh My Zsh for an improved terminal experience.
