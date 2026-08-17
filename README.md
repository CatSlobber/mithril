# mithril &nbsp; [![bluebuild build badge](https://github.com/catslobber/mithril/actions/workflows/build.yml/badge.svg)](https://github.com/catslobber/mithril/actions/workflows/build.yml)

A [Blue Build](https://blue-build.org/) customization of Fedora Silverblue 44, based on the uBlue silverblue-main image.

### Gaming Additions
- xone akmod
- Native Steam app

### UI Customizations
- Fonts from Google
- Custom wallpapers
- Dark Theme default
- Nautilus view options
- KDE Ocean sound theme
- Bibata Original Classic cursors

### Installed & Pre-configured Gnome Extensions
- ArcMenu
- Auto Move Windows
- Blur my Shell
- ChromaLeon
- Compiz window effect
- Dash to Panel
- Just Perfection

### Flatpaks from FlatHub
- Gnome Calculator
- Gnome Characters
- Gnome Disk Usage Analyzer
- Document Viewer
- Gnome Fonts
- Gnome Logs
- Gnome Image Viewer
- Gnome Sushi
- Gnome Text Editor
- Pika Backup
- Firefox
- Thunderbird
- Extension Manager
- Flatseal
- Refine
- Celluloid
- Folio
- fooyin
- Resources

### Removals
- Firefox (native)
- Gnome Camera
- Gnome Clocks
- Gnome Contacts
- Gnome Extensions
- Gnome Weather
- Gnome Maps
- Gnome Tour
- Gnome Help
- Gnome Parental Controls
- Gnome System Monitor
- Fedora Media Writer
- Fedora bundled Gnome extensions
- Fedora and Gnome default backgrounds
- htop & nvtop from upstream

## Installation

> [!WARNING]  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/catslobber/mithril:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/catslobber/mithril:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## ISO

You can generate an offline ISO with the instructions available [here](https://blue-build.org/how-to/generate-iso/#_top). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/catslobber/mithril
```
