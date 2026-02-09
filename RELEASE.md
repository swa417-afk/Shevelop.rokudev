# Release & Roku Channel Store Submission Guide

This document outlines the steps required to prepare and submit the Shevelop Roku Channel to the Roku Channel Store.

---

## Pre-Submission Checklist

Before submitting to Roku, ensure all items are completed:

- [ ] All tests in `TESTING.md` pass
- [ ] App installs and runs on at least 2 physical Roku devices
- [ ] No errors in telnet logs during 5+ minute runtime
- [ ] All content loads from production feed URLs
- [ ] Branding assets finalized (splash, icons, backgrounds)
- [ ] Legal requirements met (content rights, privacy policy)

---

## Required Assets for Roku Store

### Channel Icons
- **HD Poster (540x405 PNG)** — Main channel icon
- **FHD Poster (1920x1080 PNG)** — Featured channel poster

### Screenshots
- At least **3-6 screenshots** (1920x1080 PNG)
- Show: Home screen, Detail screen, Playback screen
- Must represent actual app UI (no mockups)

### Splash Screen
- **FHD Splash (1920x1080 PNG)** — `images/bg_splash.png`

---

## Manifest Requirements for Store Submission

Update `manifest` with production values:

```ini
title=Shevelop
subtitle=Premium Entertainment
major_version=1
minor_version=0
build_version=1

mm_icon_focus_hd=pkg:/images/channel_icon_hd.png
mm_icon_focus_fhd=pkg:/images/channel_icon_fhd.png
splash_screen_hd=pkg:/images/bg_splash.png
splash_screen_fhd=pkg:/images/bg_splash.png

splash_color=#1A1A1A
splash_min_time=1500
```

---

## Content Feed Requirements

Ensure production feed:
- Is hosted on HTTPS
- Returns valid JSON
- Includes all required episode fields
- Video URLs are publicly accessible
- HLS streams are properly formatted

Test feed before submission:
```bash
curl -s https://your-feed-url.com/episodes.json | jq
```

---

## Store Listing Information

Prepare the following for Roku Developer Dashboard:

### Channel Information
- **Channel Name:** Shevelop
- **Description (short):** 1-2 sentence tagline
- **Description (long):** Full description (up to 250 words)
- **Category:** Entertainment, Talk Show, or Education
- **Language:** English (US)
- **Country Availability:** United States (expand as needed)

### Contact & Support
- **Developer Name:** Your name or company
- **Developer Email:** Support email address
- **Website URL:** Official website
- **Privacy Policy URL:** Required (see below)

---

## Privacy Policy Requirement

Roku **requires** a privacy policy URL for all channels.

Minimum required content:
- What data you collect (if any)
- How data is used
- Third-party services (analytics, ads, CDN)
- Contact information

Host at: `https://yourwebsite.com/privacy`

---

## Packaging the Channel for Submission

### 1. Create Production Build

Ensure directory structure:
```
manifest
source/
components/
images/
feed/ (optional, for local testing)
```

### 2. Create ZIP Package

**From repo root:**
```bash
zip -r shevelop-roku-v1.0.zip manifest source components images
```

**Critical:** ZIP must NOT contain a parent folder.

### 3. Test ZIP on Device

Sideload the exact ZIP you'll submit:
1. Go to `http://<ROKU_IP>`
2. Upload ZIP
3. Run full smoke test (see `TESTING.md`)

---

## Submission Process

### Step 1: Roku Developer Account
- Create account at [developer.roku.com](https://developer.roku.com)
- Enroll ($0 for public channels)

### Step 2: Create Channel
1. Go to Developer Dashboard
2. Click "Add Public Channel"
3. Fill in channel information
4. Upload package ZIP
5. Upload screenshots and icons

### Step 3: Submit for Review
- Review checklist
- Submit channel
- Roku review typically takes 3-7 business days

---

## Post-Submission Monitoring

After approval:
- Monitor feed reliability
- Track error logs from production devices
- Prepare update process for bug fixes

---

## Version Updates

For subsequent releases:

1. Update `build_version` in manifest
2. Run full `TESTING.md` validation
3. Package new ZIP
4. Submit update via Developer Dashboard
5. Include release notes describing changes

---

## Common Rejection Reasons

Avoid these common issues:
- Broken video links
- Poor quality screenshots
- Missing privacy policy
- UI navigation issues
- Crashes during review
- Content rights violations

---

## Emergency Hotfix Process

If critical bug found in production:

1. Fix issue on `main` branch
2. Increment `build_version`
3. Full smoke test on 2+ devices
4. Package and submit update immediately
5. Contact Roku support for expedited review (if needed)

---

## Support & Resources

- **Roku Developer Docs:** https://developer.roku.com/docs
- **Roku Forums:** https://community.roku.com
- **Channel Store FAQ:** https://developer.roku.com/channel-store

---

**Next Steps:**
1. Complete all items in Pre-Submission Checklist
2. Prepare all required assets
3. Test production feed
4. Create Roku Developer account
5. Submit channel
