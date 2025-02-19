---
title: "Installation Guide"
description: "Step-by-step instructions to install Siphon CLI on different platforms."
---

# Installation Guide  

Siphon CLI is available for installation on **Linux, macOS, and Windows** using various package managers.

---

## **🔹 Prerequisites**  
- **Linux/macOS:** Python 3.6+ installed  
- **Windows:** Administrator access for Chocolatey  

---

## **📦 Install Siphon CLI**  

### **🐧 Debian/Ubuntu (APT PPA)**
Recommended for **system-wide installation** on Debian-based systems.
```bash
sudo add-apt-repository ppa:atxtechbro/siphon-cli
sudo apt update
sudo apt install siphon-cli
```
✅ **Auto-updates with** `apt upgrade`  

---

### **🖥️ Windows (Chocolatey)**
Recommended for **global CLI access** on Windows.
```powershell
choco install siphon
```
✅ **Upgrades with** `choco upgrade siphon`  

---

### **🍎 macOS/Linux (Homebrew)**
(Planned for future versions. For now, use `pip` or APT.)

---

### **🐍 Python (pip, User-Level)**
For **Python environments** or virtual environments.
```bash
pip install siphon-cli
```
✅ **Works cross-platform but requires Python**  

---

## **📌 Verifying the Installation**
After installation, check if `siphon` is available globally:
```bash
siphon --version
```

✅ **Now you can use Siphon CLI from anywhere!** 🚀

---

## **🛠️ Upgrading**
- **APT:** `sudo apt update && sudo apt upgrade siphon-cli`  
- **Chocolatey:** `choco upgrade siphon`  
- **pip:** `pip install --upgrade siphon-cli`  

---

### **🔍 Need Help?**
Check out the **[Docs](https://docs.siphon-cli.com/)** or open an **[Issue](https://github.com/atxtechbro/siphon/issues)**.

🚀 **Enjoy siphoning data across platforms!**
```
