# Roku Channel Store Release Guide — Shevelop

This guide covers the steps required to submit and publish the Shevelop Roku Channel to the Roku Channel Store.

---

## Pre-Submission Requirements

### 1. Channel Package
- [ ] App passes all tests in `TESTING.md`
- [ ] No errors in runtime logs
- [ ] All assets are final (no placeholder images)
- [ ] Manifest is complete with all required fields

### 2. Roku Developer Account
- [ ] Account created at https://developer.roku.com
- [ ] Developer agreement accepted
- [ ] Payment method on file (if monetizing)

### 3. Required Assets

#### Channel Poster (artwork)
- **HD Poster:** 290×218 PNG (displayed in channel store)
- **FHD Poster:** 540×405 PNG (for 4K devices)
- **Splash Screen:** 1920×1080 PNG (launch screen)

Requirements:
- No typos or grammatical errors
- Professional appearance
- Matches brand guidelines
- No placeholder or "coming soon" text

#### Screenshots
- **Minimum:** 4 screenshots
- **Resolution:** 1920×1080 PNG
- **Content:** Show key features (home, detail, playback)
- Must be actual app screenshots (no mockups)

---

## Manifest Configuration for Release

Update your `manifest` file with complete information:

```
# Basic Info
title=Shevelop
subtitle=Premium Podcast Experience
major_version=1
minor_version=0
build_version=1

# Channel Art
mm_icon_focus_hd=pkg:/images/channel-poster-hd.png
mm_icon_focus_fhd=pkg:/images/channel-poster-fhd.png
splash_screen_hd=pkg:/images/bg_splash.png
splash_screen_fhd=pkg:/images/bg_splash.png

# Categorization
mm_genre=talk

# Minimum Roku version (optional but recommended)
# Requires Roku OS 9.0+
min_roku_version=9.0.0

# UI Resolution
ui_resolutions=fhd
```

---

## Step-by-Step Submission Process

### Step 1: Package Your Channel

1. Ensure directory structure is correct:
```
manifest
source/
components/
images/
feed/
```

2. Create ZIP file:
   - **Important:** ZIP the contents, NOT the parent folder
   - Correct: `manifest` is at ZIP root
   - Incorrect: `shevelop/manifest` inside ZIP

3. Verify ZIP installs on physical Roku device

### Step 2: Access Developer Dashboard

1. Go to https://developer.roku.com/developer
2. Sign in to your account
3. Navigate to **Manage My Channels** → **Add Public Channel**

### Step 3: Channel Properties

Fill out the channel submission form:

#### Basic Information
- **Channel Name:** Shevelop
- **Description:** (200+ characters describing the channel)
- **Developer Name:** Your name or company
- **Developer Email:** Support contact email
- **Developer Website:** (optional but recommended)

#### Channel Details
- **Category:** Talk/Podcast
- **Parental Rating:** Select appropriate rating
- **Languages:** English (add others if supported)
- **Countries:** Select all applicable countries

#### Privacy Policy
- **Required** for all public channels
- Must be publicly accessible URL
- Should explain data collection practices

#### Terms of Service (optional but recommended)
- User agreement URL

### Step 4: Upload Assets

Upload the following:

1. **Channel Package (.zip)**
2. **HD Poster (290×218)**
3. **FHD Poster (540×405)**
4. **Screenshots (1920×1080, minimum 4)**

### Step 5: Testing Access

Roku will provide a **Vanity Access Code** for internal testing before public release.

- Share with testers
- Verify on multiple Roku devices (if possible)
- Test on both HD and 4K devices

### Step 6: Submit for Review

1. Review all information for accuracy
2. Click **Submit Channel**
3. Roku review process begins (typically 1-2 weeks)

---

## Roku Review Checklist

Roku will verify:

- [ ] Channel installs and launches successfully
- [ ] All navigation works (D-pad, OK, Back)
- [ ] Video playback functions properly
- [ ] No crashes or freezes
- [ ] Assets are professional quality
- [ ] Content meets Roku guidelines
- [ ] Privacy policy is accessible
- [ ] Manifest is complete and valid

---

## Common Rejection Reasons

### Technical Issues
- Broken navigation or focus issues
- Video playback failures
- App crashes or hangs
- Poor performance

### Content/Asset Issues
- Low-quality or placeholder images
- Typos in channel description or UI
- Missing required assets
- Screenshots don't match actual app

### Policy Violations
- Missing or invalid privacy policy
- Content not appropriate for rating
- Copyright issues

---

## After Approval

Once approved, Roku will:

1. Publish your channel to the store
2. Provide a **Channel ID**
3. Generate a public store URL

### Post-Launch Checklist
- [ ] Test installation from store
- [ ] Verify all content loads
- [ ] Monitor user feedback
- [ ] Track analytics in Roku dashboard

---

## Updating Your Channel

To release updates:

1. Increment version in `manifest`:
```
build_version=2
```

2. Re-package and re-submit through developer dashboard
3. Update includes automatic review (usually faster than initial)

### Version Strategy
- **Major version:** Big features or redesigns
- **Minor version:** New features
- **Build version:** Bug fixes and minor updates

---

## Support & Resources

- **Roku Developer Docs:** https://developer.roku.com/docs
- **Developer Forum:** https://community.roku.com/
- **Certification Criteria:** https://developer.roku.com/docs/developer-program/certification/certification.md
- **Support:** partnersuccess@roku.com

---

## Pre-Launch Final Checklist

- [ ] All items in `TESTING.md` pass
- [ ] Manifest is complete
- [ ] All assets are final and professional
- [ ] Privacy policy is live and accessible
- [ ] Channel tested on physical Roku device
- [ ] Screenshots accurately represent app
- [ ] No placeholder content
- [ ] Version numbers are correct
- [ ] Channel description is compelling and accurate

---

**Ready to submit?** Follow this guide step-by-step and you'll have a smooth approval process.

Good luck! 🚀