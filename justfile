build:
    cargo build --release -p pagui

bundle:
    cd crates/pagui && cargo tauri build

fmt:
    cargo fmt

lint:
    cargo clippy --workspace --all-targets

check: fmt lint
    cargo build --release -p pagui

icons:
    cd crates/pagui && for size in 32 128 256 512; do rsvg-convert -w "$size" -h "$size" app-icon.svg -o "icons/${size}x${size}.png"; done
    cd crates/pagui && cp icons/256x256.png icons/128x128@2x.png && cp icons/512x512.png icons/icon.png
