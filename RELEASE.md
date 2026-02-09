# Release Guide — Shevelop Roku Channel Store Submission

This guide covers the steps required to prepare and submit the Shevelop Roku Channel to the Roku Channel Store.

---

## Pre-Submission Checklist

### 1. Code & Build Validation
- [ ] All tests in `TESTING.md` pass
- [ ] No errors in runtime logs (`telnet <ROKU_IP> 8085`)
- [ ] App installs and runs on multiple Roku devices (if available)
- [ ] All features work as expected
- [ ] Performance is acceptable (no lag, crashes, or memory issues)

### 2. Manifest Requirements
- [ ] `manifest` file is properly configured with all required fields
- [ ] `title` matches your channel name exactly
- [ ] `major_version`, `minor_version`, `build_version` are incremented correctly
- [ ] `mm_icon_focus_hd` and `mm_icon_side_hd` icons are included
- [ ] `splash_screen_hd` and `splash_screen_fhd` are included

**Required manifest fields for Channel Store:**
```ini
title=Shevelop
subtitle=Your subtitle here
major_version=1
minor_version=0
build_version=1

mm_icon_focus_hd=pkg:/images/channel-icon_focus_hd.png
mm_icon_side_hd=pkg:/images/channel-icon_side_hd.png
splash_screen_hd=pkg:/images/splash_hd.png
splash_screen_fhd=pkg:/images/splash_fhd.png
```

### 3. Required Assets

#### Channel Icons
- **`channel-icon_focus_hd.png`** — 336×210 pixels
- **`channel-icon_side_hd.png`** — 108×69 pixels

#### Splash Screens
- **`splash_hd.png`** — 1280×720 pixels
- **`splash_fhd.png`** — 1920×1080 pixels

#### Channel Store Screenshots (for submission portal)
- At least 2 screenshots showing your channel UI
- Recommended: 1920×1080 pixels
- Show key features: home screen, detail view, playback

#### Channel Poster (for submission portal)
- **540×405 pixels** — Main channel poster image

---

## 4. Content & Legal Compliance

- [ ] All content has proper rights/licensing
- [ ] Privacy policy URL is included (if collecting data)
- [ ] Parental rating is accurate
- [ ] No prohibited content (per Roku guidelines)
- [ ] All video streams are functional and accessible

---

## 5. Channel Store Submission Process

### Step 1: Create Developer Account
1. Go to [developer.roku.com](https://developer.roku.com)
2. Sign in or create an account
3. Enroll as a developer (one-time setup)

### Step 2: Package Your Channel
1. Sideload your channel on a Roku device
2. Navigate to `http://<ROKU_IP>` in a browser
3. Go to **Packager** page
4. Enter your signing password (set up first time)
5. Click **Package** to generate signed `.pkg` file
6. Download the package

### Step 3: Submit to Channel Store
1. Log in to Roku Developer Portal
2. Go to **Manage My Channels**
3. Click **Add a Public Channel** (or private for testing)
4. Fill in channel details:
   - Channel name
   - Description
   - Category
   - Language
   - Parental rating
5. Upload:
   - Signed `.pkg` file
   - Channel poster (540×405)
   - Screenshots
6. Add URLs:
   - Support URL
   - Privacy policy URL (if applicable)
7. Submit for review

---

## 6. Post-Submission

### Review Timeline
- Roku typically reviews within **3-5 business days**
- You'll receive email updates on status

### Common Rejection Reasons
- Missing or incorrect icons/splash screens
- Broken video streams
- UI navigation issues
- Missing privacy policy (if required)
- Content rights issues

### If Rejected
1. Review feedback from Roku
2. Fix issues locally
3. Follow `TESTING.md` again
4. Repackage and resubmit

---

## 7. Version Updates

### For Future Releases
1. Update version numbers in `manifest`:
   ```ini
   major_version=1
   minor_version=1
   build_version=0
   ```
2. Complete full testing checklist
3. Package new version
4. Submit as update in Developer Portal

### Versioning Guidelines
- **Major version**: Breaking changes, major features
- **Minor version**: New features, enhancements
- **Build version**: Bug fixes, small changes

---

## 8. Release Notes Template

Keep track of what changes between versions:

```md
## Version 1.0.0 (YYYY-MM-DD)

### New Features
- Premium UI with neon backgrounds
- Featured hero component
- Season credibility tags
- Splash screen animation

### Bug Fixes
- Fixed navigation issues
- Improved playback stability

### Known Issues
- None at this time
```

---

## 9. Pre-Launch Testing Matrix

Test on multiple Roku models if possible:

| Device Type | Model | Tested | Pass/Fail | Notes |
|-------------|-------|--------|-----------|-------|
| Roku Streaming Stick | 3800X | ☐ | | |
| Roku Express | 3930X | ☐ | | |
| Roku Ultra | 4800X | ☐ | | |
| Roku TV | Various | ☐ | | |

---

## 10. Quick Reference Links

- [Roku Developer Portal](https://developer.roku.com)
- [Channel Publishing Guide](https://developer.roku.com/docs/developer-program/publishing/channel-publishing-guide.md)
- [Certification Checklist](https://developer.roku.com/docs/developer-program/certification/certification.md)
- [Roku Design Guidelines](https://developer.roku.com/docs/developer-program/design/design-guidelines.md)

---

## Need Help?

- Roku Developer Forums: [forums.roku.com](https://forums.roku.com)
- Roku Developer Support: developer@roku.com
- Review `TESTING.md` for validation steps

---

**Ready to submit?** Make sure every checkbox above is complete, then proceed with confidence. 🚀