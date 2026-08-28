# Personal Agent Desktop

`pagui` is the native Personal Agent desktop chat client. It opens a self-hosted Personal Agent
instance in a native Tauri window and adds desktop notifications, a tray, autostart, and local
Computer Service management.

The selected instance is stored only for the current user under
`~/.config/personal-agent/desktop/`. The desktop app owns no terminal credentials and shares no
chat token with either the [`tui`](https://github.com/personal-agent-org/tui) or
[`computer-service`](https://github.com/personal-agent-org/computer-service).

The desktop client consumes the web and chat APIs. It does not expose tools, sensors, filesystem
access, or other host capabilities. Installing Computer Service from the app starts the separate
`pacs` process with its own device-bound credential.

## Build

On Linux, install the Tauri system dependencies and run:

```bash
cd crates/pagui
cargo tauri build
```

The executable is named `pagui`.
