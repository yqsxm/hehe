#!/usr/bin/env sh

cat << EOF >/etc/config.json
{
  "inbounds":[
    {
      "port": ${PORT:=3000},
      "protocol": "${PROTOCOL:=$(echo dm1lc3MK | base64 -d)}",
      "settings": {
        "decryption": "none",
        "clients": [
          {
            "id": "${UUID:=62f743fc-7089-4dd3-8b4b-71bf3d91ee00}"
          }
        ]
      },
      "streamSettings": {
        "network": "ws"
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom"
    }
  ]
}		
EOF

$(echo L3YycmF5IC1jb25maWcgL2V0Yy9jb25maWcuanNvbgo= | base64 -d) >/dev/null 2>&1
