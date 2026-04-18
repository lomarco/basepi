### make nconfig
target packages -> hardware handling -> firmware -> brcmfmac-sdio-firmware-rpi-wifi

toolchain -> bootlin toolchain variant

system configuration -> root password

target packages -> networking applications -> wpa_supplicant:
- 
- 
- 
- 

target packages -> networking applications -> dropbear

target packages -> hardware handling -> firmware -> brcmfmac-sdio-firmware-rpi-bt

target packages -> hardware handling -> firmware -> linux-firmware -> WiFi firmware -> \*Broadcom\*

### make linux-nconfig
device drivers -> network device support -> wireless drivers -> Broadcom IEEE802.11n PCIe SoftMAC WLAN

device drivers -> network device support -> wireless drivers -> Broadcom FullMAC WLAN driver

device drivers -> network device support -> wireless drivers -> Broadcom 43xx-legacy wireless support (mac80211 stack)

### Post settings

/etc/modules-load.d/wifi.conf

### todo:
Add bluetooth support
Add gitmodule buildroot
