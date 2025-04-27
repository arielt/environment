# Flutter dev environment on Ubuntu

## Fresh installation

* Install VirtualBox: https://virtualbox.org/wiki/Downloads.
  * Disable Python bindings if you are not going to use it.
* Download desktop ISO file: https://ubuntu.com/download/desktop.
* In VirtualBox, create a VM, 16 GB memory, 8 CPUs.
* Ubuntu: App Center: install Visual Studio Code.
* Ubuntu: Visual Studio Code: install flutter extension: CTRL + SHIFT + X: Flutter
* Install developer tools: https://docs.flutter.dev/get-started/install/linux/desktop
* Install Flutter SDK: VS Code: CTRL + SHIFT + p: flutter
* If not done yet, add flutter to PATH in ~/.bashrc:
```shell
export PATH="$PATH:/home/.../flutter/bin"
```
* Install snap
```
sudo snap install snapcraft --classic
sudo snap install lxd
sudo lxd init
sudo usermod -a -G lxd $(whoami) # requires logout / login
```

## Build Snap app
```shell
rm -rf build
flutter clean
snapcraft --use-lxd
snap install --dangerous <package name>.snap
snap run <app name>
snapcraft upload --release=latest/stable <package name>.snap
snap refresh
```
