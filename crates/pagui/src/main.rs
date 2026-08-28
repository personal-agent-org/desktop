//! `pagui`, the native Personal Agent desktop chat client.

mod app;

fn main() {
    app::run(tauri::generate_context!());
}
