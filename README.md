<div align="center">
  <img src="https://raw.githubusercontent.com/thenullastris/Zenith-Launcher/main/docs/assets/zenith-hero.png" alt="A luminous portal on a floating voxel island beside a mobile device" width="100%" />
  <br />
  <br />
  <img src="Natives/Assets.xcassets/AppIcon-Light.appiconset/1024x1024.png" alt="Zenith Launcher icon" width="132" />

  # Zenith Launcher

  **A community-built Minecraft: Java Edition launcher for iOS.**

  <a href="https://github.com/thenullastris/Zenith-Launcher/actions/workflows/development.yml"><img src="https://img.shields.io/badge/build-Development%20workflow-00D8C8?style=for-the-badge&logo=githubactions&logoColor=white" alt="Development workflow" /></a>
  <a href="https://github.com/thenullastris/Zenith-Launcher/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-GPL--3.0-7C3AED?style=for-the-badge" alt="GPL-3.0 license" /></a>
  <img src="https://img.shields.io/badge/platform-iOS%2014%2B-0F172A?style=for-the-badge&logo=apple&logoColor=white" alt="iOS 14 or later" />
  <img src="https://img.shields.io/badge/architecture-arm64-0EA5E9?style=for-the-badge" alt="arm64" />
</div>

<br />

> [!NOTE]
> **Zenith Launcher** is a custom iOS build based on [PojavLauncher](https://github.com/PojavLauncherTeam/PojavLauncher) and AngelAuraAmethyst. It is tuned for launching Minecraft Java Edition on iPhone and iPad, with a focus on modern 26.x releases, custom runtimes, and mobile-friendly controls.

> [!IMPORTANT]
> This is an **unofficial community project**. For Zenith-specific problems, please open an [issue](https://github.com/thenullastris/Zenith-Launcher/issues) here rather than contacting the upstream Amethyst developers.

---

## The launcher, reimagined for iOS

Zenith is built for players who want a capable Java Edition setup without leaving iOS. Select the runtime that fits your version, choose a renderer for your device, connect a keyboard when you need one, and launch.

| Capability | What Zenith provides |
| --- | --- |
| **Modern Java Edition focus** | A custom build targeting Minecraft 26.x development and compatible releases. |
| **Mobile-first compatibility** | Support for iOS 14 and later, including recent iOS 26 and iOS 27 beta testing. |
| **Multiple graphics paths** | Zinc/Mesa, LTW, and Vulkan-oriented configurations for different game versions and devices. |
| **Runtime flexibility** | Bundled Java 8, 17, 21, and a custom Java 25 path to match different Minecraft eras. |
| **Real input support** | Keyboard integration for a more complete Java Edition experience. |

---

## Choose your renderer

| Renderer | Recommended use | Setup note |
| --- | --- | --- |
| **Zinc Renderer** | Best general performance | Runs Mesa 25 through MoltenVK. |
| **LTW Renderer** | Minecraft 1.21.1 and earlier | Use when older versions are more stable with LTW. |
| **Vulkan** | MobileGlues or Zinc configurations | Launch with MobileGlues or Zinc, then set **Preferred Graphics API** to Vulkan. |

---

## Runtime notes

> [!TIP]
> Start with the runtime recommended by the game version or profile you are using. Java 25 is Zenith’s custom modern runtime path.

| Runtime | Current guidance |
| --- | --- |
| **Java 8** | Works without special configuration. |
| **Java 17** | Included for compatibility testing; validate the game you need on your device. |
| **Java 21** | Most older releases can be launched by selecting Java 25 instead. |
| **Java 25** | Zenith’s custom runtime path for modern compatibility. |

---

## Project status

| Area | Status |
| --- | --- |
| **Latest snapshot support** | Work in progress while Mojang transitions the windowing and keyboard stack from GLFW to SDL3. |
| **SDL3 migration** | Help is welcome. See the [issue tracker](https://github.com/thenullastris/Zenith-Launcher/issues) if you would like to contribute. |
| **Development builds** | Available through the manually triggered [Development workflow](https://github.com/thenullastris/Zenith-Launcher/actions/workflows/development.yml). |

---

## Build from source

<details>
<summary><strong>For advanced users and contributors</strong></summary>

<br />

The repository includes a manual GitHub Actions workflow that builds both a sideload IPA and a TrollStore tIPA.

1. Open the [Development workflow](https://github.com/thenullastris/Zenith-Launcher/actions/workflows/development.yml).
2. Select **Run workflow** on the `main` branch.
3. Wait for the workflow to complete.
4. Download the matching artifact from the completed run.

The build uses the custom `lwjgl.jar` in the repository root. This LWJGL 3.3.3-derived build supplies compatibility for LWJGL 3.4.1 API calls.

</details>

---

## Credits

Zenith builds on the work of a broader open-source community.

- **vibecodest** — source code foundation.
- **Ynnyny** and **DuyAnh662** — code and rendering support.
- **T1k-T1k** and **DuyAnh662** — keyboard fixes.
- **T1k-T1k** — build-system enablement.
- **MCHeads** — Minecraft avatar service.

---

## Third-party components

| Component | License |
| --- | --- |
| Caciocavallo | GNU GPLv2 |
| jsr305 | 3-Clause BSD |
| Boardwalk | Apache 2.0 |
| GL4ES | MIT |
| Mesa 3D Graphics Library | MIT |
| MetalANGLE | BSD 2-Clause |
| MoltenVK | Apache 2.0 |
| openal-soft | LGPLv2 |
| Azul Zulu JDK | GNU GPLv2 |
| LWJGL3 | BSD-3-Clause |
| LWJGLX | Unknown |
| DBNumberedSlider | Apache 2.0 |
| fishhook | BSD-3-Clause |
| shaderc | Apache 2.0 |
| NRFileManager | MPL-2.0 |
| UnzipKit | BSD-2-Clause |
| LTW render | LGPL-3.0 |

Other components include AltKit and DyldDeNeuralyzer, which support external runtime loading.

---

<div align="center">
  <sub>Zenith Launcher is distributed under the <a href="LICENSE">GNU General Public License v3.0</a>.</sub>
</div>
