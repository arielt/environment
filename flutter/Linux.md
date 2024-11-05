# Linux

## Fresh installation

* Download virtual box: https://virtualbox.org/wiki/Downloads.
* Download desktop ISO file: https://ubuntu.com/download/desktop.
* Create a VM, 16 GB memory, 8 CPUs.
* App Center: install Visual Studio Code.
* Visual Studio Code: install flutter extension: CTRL + SHIFT + X: Flutter
* Install developer tools: https://docs.flutter.dev/get-started/install/linux/desktop
* Install Flutter SDK: VS Code: CTRL + SHIFT + p: flutter
* If not done yet, add flutter to PATH.
* Install snap
```
sudo snap install snapcraft --classic
sudo snap install lxd
sudo lxd init
sudo usermod -a -G lxd # requires logout / login
```


## Build Snap app
```
rm -rf build
flutter clean
snapcraft --use-lxd
snap install --dangerous <package name>.snap
snap run <app name>
snapcraft upload --release=latest/stable <package name>.snap
snap refresh
```
