# SPC Web Gateway

## How to use

The SPC Web Gateway distribution (spc-web-gateway-ubuntu_x86_64_18_04.1.5.tar.gz) needs to be copied to Home Assistant.

The distribution should be copied to /addon_configs/local_spc-web-gateway before installation starts.

In the file editor, set the option "Enforce Basepath" to false in order to access the /addon_configs folder.

When configuring the Vanderbilt SPC integration, use the following values:

```
spc:
  api_url: http://local-spc-web-gateway:8088
  ws_url: http://local-spc-web-gateway:8088/ws/spc
```
