# Release Guide — Shevelop Roku Channel

This guide covers the complete process for submitting and updating the Shevelop Roku Channel in the Roku Channel Store.

---

## Pre-Release Checklist

Before submitting to Roku, ensure all items are complete:

### 1. Technical Requirements
- [ ] All items in `TESTING.md` pass
- [ ] App installs and runs on physical Roku device
- [ ] No crashes during 15-minute smoke test
- [ ] All videos play successfully
- [ ] Remote navigation works flawlessly
- [ ] No errors in telnet logs (`telnet <ROKU_IP> 8085`)

### 2. Content Requirements
- [ ] All episode metadata is accurate (titles, descriptions, thumbnails)
- [ ] Video URLs are production-ready (not test/staging)
- [ ] All images meet Roku specifications
- [ ] Content is appropriate and follows Roku guidelines

### 3. Manifest Validation
- [ ] `title` is correct
- [ ] Version numbers incremented properly
- [ ] `major_version`, `minor_version`, `build_version` updated

---

## Required Assets for Roku Channel Store

Roku requires specific artwork for your channel listing. Prepare these before submission:

### Channel Poster Art
- **HD Poster (540x405)** — Main channel icon
  - Format: PNG or JPG
  - No transparency
  - Clearly readable text/logo

- **FHD Poster (1920x1440)** — Optional but recommended
  - Format: PNG or JPG

### Screenshots (At Least 3 Required)
- **FHD Screenshots (1920x1080)**
  - Show key app features
  - Include: Home screen, detail screen, playback
  - No black bars or letterboxing
  - Clean, professional captures

### Splash Screen (Optional but Recommended)
- **FHD Splash (1920x1080)**
  - Displays while channel loads
  - Matches brand aesthetic

---

## Roku Developer Account Setup

1. **Create Roku Developer Account**
   - Visit: https://developer.roku.com
   - Sign up with business email
   - Complete profile

2. **Enroll in Partner Program** (if monetizing)
   - Complete tax forms
   - Set up payment information

3. **Create Channel Listing**
   - Navigate to Developer Dashboard
   - Click "Manage My Channels"
   - Select "Add Public Channel" or "Add Private Channel"

---

## Channel Submission Steps

### Step 1: Package Your Channel

On your Roku device (developer mode enabled):

1. Access Developer Settings:
   - Go to `http://<ROKU_IP>` in browser
   - Enter developer credentials

2. Package the channel:
   - Click "Packager"
   - Enter signing password (save this!)
   - Click "Package"
   - Download the `.pkg` file

### Step 2: Upload to Roku

1. Log into Roku Developer Dashboard
2. Select your channel
3. Navigate to "Package Upload"
4. Upload `.pkg` file
5. Fill in version notes

### Step 3: Complete Channel Information

#### Channel Properties
- **Channel Name:** Shevelop
- **Description:** (Write compelling 200-500 character description)
- **Developer Name:** Your name or company
- **Support Email:** Support contact
- **Support URL:** Website or support page

#### Categories
- Select primary category (e.g., "Entertainment", "Talk Shows")
- Add secondary category if applicable

#### Pricing
- Select "Free" (or pricing model if applicable)

#### Languages
- Select supported languages (English minimum)

### Step 4: Upload Assets
- HD Poster (540x405)
- FHD Poster (1920x1440) — optional
- 3-6 Screenshots (1920x1080)
- Splash screen (optional)

### Step 5: Content Rating
- Complete Roku's content questionnaire
- Select appropriate rating (G, PG, PG-13, etc.)
- Be honest about content

### Step 6: Privacy Policy
- Provide privacy policy URL
- Required if collecting any user data

### Step 7: Submit for Review
- Review all information
- Click "Submit Channel"
- Wait for Roku review (typically 3-7 business days)

---

## Post-Submission

### Review Process
- Roku reviews for:
  - Technical compliance
  - Content appropriateness
  - Metadata accuracy
  - Policy compliance

### Possible Outcomes
1. **Approved** — Channel goes live
2. **Rejected** — Fix issues and resubmit
3. **Changes Requested** — Address feedback and update

---

## Updating an Existing Channel

### For Bug Fixes or Minor Updates
1. Increment `build_version` in manifest
2. Package new `.pkg` file
3. Upload to existing channel in dashboard
4. Add release notes
5. Submit for review

### For Major Features
1. Increment `minor_version` or `major_version`
2. Update screenshots if UI changed
3. Update channel description if needed
4. Follow same packaging and upload process

---

## Version Numbering Strategy

Use semantic versioning:

- **major_version** — Breaking changes or complete overhauls
- **minor_version** — New features, significant updates
- **build_version** — Bug fixes, small improvements

Example progression:
```
1.0.1 → 1.0.2  (bug fix)
1.0.2 → 1.1.0  (new featured hero component)
1.1.0 → 2.0.0  (complete UI redesign)
```

---

## Roku Certification Checklist

### Technical
- [ ] Channel launches in under 3 seconds on supported devices
- [ ] No crashes during testing
- [ ] Back button always works
- [ ] Deep linking works (if implemented)
- [ ] Video playback is smooth

### Content
- [ ] All content is licensed/owned
- [ ] Metadata is accurate
- [ ] No broken links or 404 errors
- [ ] Content rating is appropriate

### UI/UX
- [ ] Focus is always visible
- [ ] Text is readable (contrast, font size)
- [ ] Images are high quality
- [ ] Navigation is intuitive

---

## Common Rejection Reasons (And How to Avoid)

### 1. Poor Image Quality
- Use high-resolution source images
- No pixelation or compression artifacts
- Follow exact dimension requirements

### 2. Broken Functionality
- Test on multiple Roku device models
- Verify all videos play
- Check all navigation paths

### 3. Incomplete Metadata
- Fill out all required fields
- Provide accurate descriptions
- Include support contact info

### 4. Content Policy Violations
- Follow Roku content guidelines
- Accurate content rating
- No prohibited content

### 5. Crashes or Errors
- Run through `TESTING.md` completely
- Check telnet logs for errors
- Test on physical device, not just emulator

---

## Testing Before Submission

### Device Testing Matrix
Test on at least these categories:
- [ ] Roku Stick (low-end device)
- [ ] Roku Ultra (high-end device)
- [ ] Roku TV (if possible)

### Playback Testing
- [ ] Test all video formats (HLS, MP4)
- [ ] Test with slow internet connection
- [ ] Verify resume functionality
- [ ] Test skip forward/backward

### Stress Testing
- [ ] Navigate rapidly through UI
- [ ] Spam Back button
- [ ] Let app idle for 10+ minutes
- [ ] Exit and re-enter multiple times

---

## Private vs. Public Channels

### Private Channel (Beta Testing)
- Access code required
- Not searchable in Roku Channel Store
- Perfect for testing with limited audience
- Can update without Roku review

### Public Channel (Official Release)
- Searchable in Roku Channel Store
- Requires Roku review for all updates
- Available to all Roku users
- Professional submission required

**Recommendation:** Start with Private Channel for beta testing, then convert to Public when ready.

---

## Post-Launch

### Monitor
- Check Roku Developer Analytics
- Monitor support email for issues
- Watch for crash reports

### Iterate
- Gather user feedback
- Fix bugs promptly
- Plan feature updates

### Promote
- Share channel link: `https://channelstore.roku.com/details/<channel-id>`
- Post on social media
- Add to website

---

## Support Resources

- **Roku Developer Documentation:** https://developer.roku.com/docs
- **Roku Developer Forum:** https://community.roku.com/
- **Design Guidelines:** https://developer.roku.com/design
- **Certification Checklist:** https://developer.roku.com/docs/developer-program/certification

---

## Emergency Rollback

If critical bug discovered post-release:

1. Package previous working version
2. Upload as emergency update
3. Explain issue in release notes
4. Roku may expedite review for critical fixes

Always keep previous `.pkg` files archived!

---

**Ready to submit?** Run through this checklist one final time, then package and upload with confidence.