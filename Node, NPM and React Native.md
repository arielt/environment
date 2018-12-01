# Node.js


## Install NVM

https://github.com/creationix/nvm

```
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
```

## Install Node.js

```
nvm install 10.13.0
nvm use 10.13.0
```

## Brew

Check if there is node installed with brew. It has been known to cause problems in the past.

    brew uninstall node

## Useful instructions


```
# check globally installed packages
npm list -g --depth 0
```

## React Native

    npm install -g react-native-cli
    react-native init tmp
    cd tmp
    react-native run-ios

Troubleshooting around react native and linking native code: https://github.com/oney/RCTWebRTCDemo/issues/26

Installing web rtc:

    npm install react-native-webrtc
    react-native link

Install cocoapods:

    gem install cocoapods
