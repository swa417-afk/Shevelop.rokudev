# Shevelop.rokudev
# Shevelop Roku Channel

🎙️ **Shevelop** is a Roku streaming channel featuring a women-in-tech podcast amplifying Black women and underrepresented voices in STEM, technology, entrepreneurship, and innovation.

This repository contains the **open-source application code** for the Shevelop Roku Channel.

---

## What This Repository Includes
- Roku SDK (BrightScript + SceneGraph) application code
- UI components and layouts
- JSON feed integration logic

## What This Repository Does NOT Include
- Podcast episodes (audio/video)
- Branding assets, logos, or artwork
- Proprietary content feeds or credentials

---

## Tech Stack
- Roku SDK (BrightScript, SceneGraph)
- JSON-based content feed
- External video hosting (AWS S3 + CloudFront, Vimeo, or YouTube Unlisted)

---

## License
**Code:** MIT License  
**Content:** © 2026 Shevelop. All rights reserved.

---

## Privacy
No user accounts are required. No personal data is collected directly by this application.

---

## Status
🚧 Active development  
📺 Target platform: Roku Streaming Store  
🎬 Initial release: Season 1 podcast episodes

---

## Contact
support@shevelop.com

## Local Development & Sideloading

### Requirements
- Roku device or Roku TV
- Developer Mode enabled
- Same local network as your computer
- ZIP utility

### Enable Developer Mode
1. On your Roku remote:
   Home x3 → Up x2 → Right → Left → Right → Left → Right
2. Enable Developer Mode
3. Reboot and note the device IP address

### Package the App
From the project root:
- Zip all files **except** `.git`, `README.md`, and build artifacts
- Ensure `manifest` is at the root of the ZIP

### Sideload
1. Visit `http://<ROKU_IP>` in your browser
2. Upload ZIP file
3. Install and launch

### Debugging
Use telnet:
