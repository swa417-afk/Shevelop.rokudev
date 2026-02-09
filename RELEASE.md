# Release Guide — Shevelop Roku Channel

This document outlines the process for preparing and submitting the Shevelop Roku Channel to the Roku Channel Store.

---

## Pre-Submission Checklist

Before submitting to the Roku Channel Store, ensure all items are complete:

### 1. Technical Requirements
- [ ] App passes all tests in `TESTING.md`
- [ ] No errors in Roku logs (telnet 8085)
- [ ] Manifest is properly configured
- [ ] All assets are optimized (images, videos)
- [ ] Deep linking implemented (if applicable)
- [ ] Analytics integrated (if using Roku Analytics)

### 2. Manifest Requirements

**Required fields:**
```ini
title=Shevelop
subtitle=Premium Podcast Experience
major_version=1
minor_version=0
build_version=1

# Channel branding
mm_icon_focus_hd=pkg:/images/channel-icon-focus-hd.png
mm_icon_side_hd=pkg:/images/channel-icon-side-hd.png
mm_icon_focus_sd=pkg:/images/channel-icon-focus-sd.png
mm_icon_side_sd=pkg:/images/channel-icon-side-sd.png

# Splash screen
splash_screen_hd=pkg:/images/splash-screen-hd.png
splash_screen_sd=pkg:/images/splash-screen-sd.png
splash_color=#FF1FB6
splash_min_time=1000

# Localization
ui_resolutions=hd,fhd
```

**Optional but recommended:**
```ini
screensaver_title=Shevelop
screensaver_private=0
```

---

## 3. Required Channel Assets

### Channel Icons
- **Focus HD:** 336 × 210 PNG (with transparency)
- **Side HD:** 336 × 210 PNG
- **Focus SD:** 248 × 140 PNG
- **Side SD:** 248 × 140 PNG

### Splash Screens
- **HD:** 1280 × 720 PNG
- **FHD:** 1920 × 1080 PNG (recommended)
- **SD:** 720 × 480 PNG

### Channel Store Screenshots
- **Minimum:** 4 screenshots
- **Resolution:** 1920 × 1080 or 1280 × 720
- **Format:** PNG or JPG
- **Content:** Show key features (home screen, playback, details)

### Channel Poster
- **Size:** 540 × 405 PNG or JPG
- **Purpose:** Appears in Roku Channel Store search results

---

## 4. Channel Store Information

Prepare the following information for submission:

### Basic Information
- **Channel Name:** Shevelop
- **Description:** (150-200 words describing the channel)
- **Category:** Podcast / Entertainment
- **Language:** English (US)
- **Countries:** United States (expand as needed)

### Sample Description:
```
Shevelop is your premium destination for groundbreaking conversations at the intersection of culture, technology, and entrepreneurship. Featuring in-depth interviews with industry leaders, innovators, and changemakers, Shevelop delivers thought-provoking content designed for the modern viewer.

Experience rich visual storytelling with our neon-inspired interface, seamless playback, and curated episode collections. Whether you're catching up on the latest season or discovering classic episodes, Shevelop brings podcast excellence to your TV.
```

### Keywords (for search optimization)
```
podcast, interview, culture, tech, entrepreneur, talk show, streaming
```

---

## 5. Content Rating & Compliance

- [ ] Content rating selected (TV-PG, TV-14, etc.)
- [ ] Privacy policy URL provided
- [ ] Terms of service URL provided (if applicable)
- [ ] Parental controls configured (if needed)
- [ ] Closed captions available (strongly recommended)

**Privacy Policy URL:** [Add your URL]  
**Terms of Service URL:** [Add your URL]

---

## 6. Monetization (Optional)

If implementing ads or subscriptions:

- [ ] RAF (Roku Advertising Framework) integrated
- [ ] Billing integration configured
- [ ] Subscription tiers defined
- [ ] Free trial period set (if applicable)

---

## 7. Testing on Multiple Devices

Test on at least:
- [ ] Roku Express/Streaming Stick (1080p)
- [ ] Roku Ultra (4K)
- [ ] Roku TV

Verify:
- [ ] UI scales properly across resolutions
- [ ] Focus and navigation consistent
- [ ] Playback smooth on all devices
- [ ] No memory leaks during extended use

---

## 8. Build & Package

### Create Release Build

1. Increment version in `manifest`:
   ```ini
   major_version=1
   minor_version=0
   build_version=1
   ```

2. Create ZIP package:
   ```bash
   zip -r shevelop-v1.0.1.zip manifest source/ components/ images/ feed/ -x "*.DS_Store"
   ```

3. Verify ZIP structure (manifest at root)

4. Test sideload on Roku device

---

## 9. Submission Process

### Via Roku Developer Dashboard

1. Log in to [https://developer.roku.com](https://developer.roku.com)
2. Navigate to **Manage My Channels**
3. Click **Add Public Channel** (or update existing)
4. Upload package ZIP
5. Fill in channel information
6. Upload all required images
7. Submit for review

### Review Timeline
- **Initial review:** 3-5 business days
- **Updates:** 1-3 business days
- **Rejections:** Address feedback and resubmit

---

## 10. Post-Submission Checklist

- [ ] Monitor developer dashboard for review status
- [ ] Respond to any Roku review team feedback within 48 hours
- [ ] Prepare hotfix process for critical issues
- [ ] Set up analytics monitoring
- [ ] Plan for user feedback collection
- [ ] Schedule post-launch social media announcements

---

## 11. Version Numbering

Follow semantic versioning:

- **Major version:** Breaking changes, major features
- **Minor version:** New features, non-breaking changes
- **Build version:** Bug fixes, patches

Example:
- `1.0.1` — Initial release
- `1.0.2` — Bug fix
- `1.1.0` — New feature (season tags)
- `2.0.0` — Major redesign

---

## 12. Common Rejection Reasons

Avoid these issues:

- Missing or incorrect manifest fields
- Low-quality or incorrect-sized images
- Broken playback or navigation
- Privacy policy not provided
- Crashes or errors during review
- Non-compliant content rating
- Poor user experience (slow loading, confusing UI)

---

## 13. Emergency Hotfix Process

If critical bug discovered after release:

1. Create hotfix branch: `git checkout -b hotfix/v1.0.2`
2. Fix issue and test thoroughly
3. Update build version in manifest
4. Create new ZIP package
5. Submit update via dashboard
6. Mark as **urgent** if affecting all users

---

## 14. Resources

- **Roku Developer Portal:** [https://developer.roku.com](https://developer.roku.com)
- **Channel Certification Checklist:** [https://developer.roku.com/docs/developer-program/certification/certification.md](https://developer.roku.com/docs/developer-program/certification/certification.md)
- **Design Guidelines:** [https://developer.roku.com/docs/developer-program/design/design-guidelines.md](https://developer.roku.com/docs/developer-program/design/design-guidelines.md)
- **SceneGraph Documentation:** [https://developer.roku.com/docs/references/scenegraph/component-functions.md](https://developer.roku.com/docs/references/scenegraph/component-functions.md)

---

## Questions or Issues?

Contact the Roku Developer Support team or consult the Roku Developer Forums.

**Ready to ship? Let's go! 🚀**