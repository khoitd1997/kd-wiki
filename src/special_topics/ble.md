# BLE

## Notes about the Protocols

- All device must advertise using the 1Mbps PHY for compatibility, devices that can use the 2Mbps PHY can use the 1M to jump to 2M.
- You can not have GATT communication on 2M if you didn't advertise on it.
- MTU affects whether you need to do long write while data length affect how efficient the lowest level send out packet, a big MTU can be inefficient if you have to split it too much although big MTU will giver upper layer better ergonomics
- While ATT is the most commonly used protocol to talk, other high level protocols such as CoC can be used that improve throughput for other applications
- Extended advertising may not be implemented even though devices implement BLE 5

## Notes about Android API

- Android by default only uses 1M PHY, must set legacy mode to false to talk with 2M.
- The API itself is not that bad, should probably use it since even popular third-party implementation can be spotty

## Helpful Stuffs

- [Device BLE Capability Database](1): Good if you have a SIG account, save a lot of guessing about your phone's BLE capability.
- [NRFConnect App](2): Pretty good for testing both client and server. Also allow you to discover some BLE capabilities of your phone.

[1]: https://launchstudio.bluetooth.com/Listings/Search
[2]: https://play.google.com/store/apps/details?id=no.nordicsemi.android.mcp&hl=en_US
