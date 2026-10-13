# Kricko Desktop Releases 🚀

Official Windows binaries for **Kricko Desktop (v0.1.0)** — 100% Private, On-Device AI by Cortiqa.

---

## 📁 Release Files in this Folder

| File Name | Size | Type | Description |
| :--- | :--- | :--- | :--- |
| **`kricko_0.1.0_x64-setup.exe`** | ~2.9 MB | **Setup Installer (NSIS)** | **(Recommended for Website)** Double-click to install. Creates Desktop shortcut & Start Menu entry with the official Kricko white-background logo. |
| **`kricko-desktop.exe`** | ~9.2 MB | **Portable Executable** | Standalone app. Runs directly without requiring installation. |
| **`kricko_0.1.0_x64_en-US.msi`** | ~3.8 MB | **Windows MSI Installer** | Standard MSI installer package for Windows systems. |

---

## 🚀 Method 1: Publish to GitHub Releases (Recommended)

GitHub Releases is the industry standard for distributing desktop apps (used by Ollama, LM Studio, VS Code, etc.). It gives you free high-speed download bandwidth and direct links.

### Steps:
1. Go to your repository on GitHub: `https://github.com/<your-username>/kricko`
2. On the right-side panel, click on **Releases** ➔ **Draft a new release** (or click `Create a new release`).
3. Fill in the release details:
   - **Choose a tag**: Type `v0.1.0` and click *Create new tag*.
   - **Release title**: `Kricko Desktop v0.1.0 (Windows)`
   - **Description**:
     ```markdown
     ## Kricko Desktop v0.1.0

     Fast, private, 100% local AI assistant on your device.

     ### What's New:
     -  High-speed local LLM chat engine (Gemma, Llama, Qwen, DeepSeek).
     -  Modern interface with updated Kricko branding.
     -  100% Offline execution with zero telemetry.

     ### Downloads:
     - **Windows Installer (Recommended)**: `kricko_0.1.0_x64-setup.exe`
     - **Portable (.exe)**: `kricko-desktop.exe`
     ```
4. In the **"Attach binaries by dropping them here"** box, drag and drop:
   - `kricko_0.1.0_x64-setup.exe`
   - `kricko-desktop.exe`
   - `kricko_0.1.0_x64_en-US.msi`
5. Click **Publish release**.

---

## 🌐 Website Integration (How to put on your Website)

Once uploaded to GitHub Releases (or your own server/CDN), add a download button on your website (`cortiqa.co`):

### Direct Download Link Format:
```text
https://github.com/<your-username>/kricko/releases/download/v0.1.0/kricko_0.1.0_x64-setup.exe
```

### HTML Code for Website:
```html
<!-- Kricko Download Button -->
<a href="https://github.com/<your-username>/kricko/releases/download/v0.1.0/kricko_0.1.0_x64-setup.exe" 
   class="kricko-download-btn" 
   style="display: inline-flex; align-items: center; gap: 10px; background: #000; color: #fff; padding: 12px 24px; border-radius: 9999px; text-decoration: none; font-weight: 600; font-family: sans-serif;">
  <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
    <path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path>
    <polyline points="7 10 12 15 17 10"></polyline>
    <line x1="12" y1="15" x2="12" y2="3"></line>
  </svg>
  Download Kricko for Windows (.exe)
</a>
```

### React / Tailwind CSS Code:
```tsx
<a
  href="https://github.com/<your-username>/kricko/releases/download/v0.1.0/kricko_0.1.0_x64-setup.exe"
  className="inline-flex items-center gap-2.5 px-6 py-3 rounded-full bg-neutral-900 hover:bg-neutral-800 text-white font-medium text-sm transition-all shadow-md hover:shadow-lg"
>
  <Download className="w-4 h-4" />
  Download for Windows
</a>
```

---

## 💻 Method 2: GitHub CLI (`gh`) Command

If you have GitHub CLI installed, you can create and publish the release directly from your terminal:

```bash
gh release create v0.1.0 ^
  kricko_0.1.0_x64-setup.exe ^
  kricko-desktop.exe ^
  kricko_0.1.0_x64_en-US.msi ^
  --title "Kricko Desktop v0.1.0" ^
  --notes "First official release of Kricko Desktop for Windows."
```
