# Testing & Validation Guide — Shevelop Roku Channel

This document outlines the required testing and validation steps for the Shevelop Roku Channel before merging changes or submitting builds.

---

## 1. Packaging Validation

**Goal:** Roku can install the application.

- ZIP root contains `manifest` (no extension)
- ZIP root contains `source/`, `components/`, `images/`
- No parent folder inside the ZIP

✅ Correct ZIP layout:
```
manifest
source/
components/
images/
```

❌ Incorrect:
```
shevelop-roku/
  manifest
```

---

## 2. Manifest Validation

**Minimum required manifest:**
```ini
title=Shevelop
major_version=1
minor_version=0
build_version=1
```

Checklist:
- File name is exactly `manifest`
- Plain text, UTF-8, no BOM
- No smart quotes

---

## 3. BrightScript Syntax Verification

**Required file:**
- `source/main.brs` containing:
```brightscript
sub Main(args as Object)
```

Verify:
- All `if` statements have `end if`
- All loops have `end for`
- All subs/functions close properly
- No trailing commas in associative arrays
- Use `invalid` correctly (not `null`)

Common failure signs:
- Black screen on launch
- `BRIGHTSCRIPT: ERROR` in logs

---

## 4. XML (SceneGraph) Validation

Checklist:
- All XML files are well-formed
- All tags are closed
- Attributes are properly quoted
- `<component name="X">` matches filename and usage
- `<script uri="pkg:/...")>` paths are correct and case-sensitive

Example:
```xml
<component name="MainScene" extends="Scene">
```

Must match:
```brightscript
screen.CreateScene("MainScene")
```

---

## 5. Component Reference Validation

Verify:
- Every custom component used in XML has a matching `.xml` file
- Every `findNode("id")` matches an existing node ID in XML
- No `findNode()` calls return `invalid`

Common error:
```
Attempt to access field of invalid
```

---

## 6. Feed & Data Validation

Ensure feed JSON:
- Is valid JSON
- Contains `episodes` array
- Each episode includes:
  - `id`
  - `title`
  - `description`
  - `thumbnail`
  - `videoUrl`

Optional but recommended:
- `season`
- `episodeNumber`
- `featuredId` matches an episode ID

---

## 7. Playback Validation

Verify:
- HLS streams use `streamFormat="hls"`
- MP4 streams use `streamFormat="mp4"`
- Playback starts successfully
- Back button exits player cleanly

---

## 8. Runtime Logs

Enable Roku logs:
```bash
telnet <ROKU_IP> 8085
```

Watch for:
- `XML: ERROR`
- `BRIGHTSCRIPT: ERROR`
- `Component not found`
- `No such field`

Logs are the fastest way to diagnose failures.

---

## 9. UI & Remote Navigation Testing

- D-pad navigation works consistently
- Focus is always visible
- OK selects content
- Back returns to previous screen
- No dead-end focus states

---

## 10. Smoke Test (30 seconds)

- Launch app
- Splash screen fades
- Home screen loads
- Select Featured → Play → Back
- Select Grid item → Play → Back

If all pass, the build is merge-ready.