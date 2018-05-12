# Node.js

## Brew

Check if there is node installed with brew. It has been known to cause problems in the past.

    brew uninstall node

## Installation

* Download package from https://nodejs.org
* Install
* Both node and npm should be available

Update npm:
```
npm install -g npm@latest

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
