# browsewithscroll
just a simple html tool to scroll through fonts and media folders like a music producer would with samples

**scroll** is a local tool for previewing and organizing your font and media collections directly in your browser.
No internet connection or installation required — simply run the launcher script and it will index your folders into a scrollable interface.

Built for designers and creators who need a lightweight way to browse local assets without heavy software. Ideal for those who prefer simplicity, privacy, and control. Not for complex asset management, but handles large directories with ease.

All your data stays on your machine. The tool works by "baking" your file lists into static pages, bypassing browser security restrictions for local file access.

![preview](assets/preview.mp4)

## Features

**vault** is stable and functional, aimed at staying minimal: just drop your files in the folders, run the script, and start browsing.

* **Zero-Dependency**: No need to install `jq` or external libraries. Powered by standard Unix tools (`sed`, `tr`, `bash`).
* **Font Focus**: Preview `.ttf`, `.otf`, and `.woff` files with live rendering and custom specimen text.
* **Media Scroll**: Support for common images (`jpg`, `png`, `webp`, `gif`) and videos (`mp4`, `webm`, `ogg`) in a single view.
* **Launch & Sync**: A single `launch.sh` script updates your asset lists and opens the browser in one click.
* **Shuffle Mode**: Persistent "Shuffle" toggle using `localStorage` to explore your collection in random order.
* **Serverless approach**: Works directly via the `file://` protocol; no local server or Node.js environment required.
* **Hiper-light**: Minimal overhead, keeping the interface snappy even with hundreds of assets.

**WIP**: Grid view mode > Custom specimen text input > Basic file metadata display > Tagging system

Remember that **new files won't show up until you run the launcher!** — run it whenever you update your folders.

Pro tip: *save as bookmark for easy access after the first launch!*
