# SPC Web Gateway

## Installation

You need the SPC Web Gateway software avaialable from Lundix IT. This has been tested with version 1.5 for Ubuntu 18.04.

1. Install add-on as normal. This will fail as the SPC software is not available yet.
2. Copy spc-web-gateway-ubuntu_x86_64_18_04.1.5.tar.gz to /addon_config/45252770_spc-web-gateway
3. Re-install

In the file editor, set the option "Enforce Basepath" to false in order to access the /addon_configs folder.

## Configuration

### SPC setup

When configuring the EDP settings in SPC, use the following values:

- Encryption: true
- Encryption key: Same as setup in the add-on.
- IP address: IP address of the Home Assistant server.
- Port: 16000 (or change in add-on setup)

Make a note of the unit ID as well so it matches in the add-on.

### Add-on setup

Currently the Vandrbilt SPC does not support all options in the add-on. So use the following (default) values.

- Enable GET authentication: false
- Enable PUT authentication: false
- Enable Websocket authentication: false

The usernames and password are not used at the moment.

### Plugin setup

When configuring the Vanderbilt SPC integration, use the following values:

```
spc:
  api_url: http://45252770-spc-web-gateway:8088
  ws_url: http://45252770-spc-web-gateway:8088/ws/spc
```

## How to use
