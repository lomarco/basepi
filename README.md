# BasePI: Custom Firmware for Raspberry Pi Zero 2W
[![Buildroot Version](https://shields.io)](https://buildroot.org)
[![License: MIT](https://shields.io)](LICENSE)

<table>
<tr>
<td>

**BasePI** is a lightweight custom firmware for the [Raspberry Pi Zero 2W](https://www.raspberrypi.com/products/raspberry-pi-zero-2-w), built on the [Buildroot](https://gitlab.com/buildroot.org/buildroot) ecosystem. This project optimizes the creation of minimal system images.

</td>
</tr>
</table>

## Quick Start
### 1. Environment Setup
Clone the repository with submodules:
``` bash
git clone --depth 1 --recursive https://github.com/lomarco/basepi
cd basepi
```

### 2. Configuration Deployment

Use the Makefile wrapper to initialize the project. This links the Buildroot kernel with our external BasePI tree:
``` bash
make setup
```

### 3. Build
Start the compilation process. The initial build may take 20–40 minutes depending on your CPU performance:
``` bash
make -j$(nproc)
```

### 4. Flash SD Card

After successful completion, the ready-to-use image is located at:
`buildroot/output/images/sdcard.img`.

Flash it to a MicroSD card:

``` bash
sudo dd if=buildroot/output/images/sdcard.img of=/dev/sdX bs=4M status=progress
```

*Replace `/dev/sdX` with your device path.*

## License
BasePi firmware is licensed under the MIT. See the [LICENSE](LICENSE) for details.

## Copyright
© 2026 [lomarco](https://github.com/lomarco). All rights reserved.
