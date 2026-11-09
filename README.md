# Mi Flash Tool

Credits: Fastboot binaries provided by [nohajc/termux-adb](https://github.com).

A lightweight tool for MIUI and Xiaomi HyperOS users that automates ROM flashing on Redmi and Poco devices without requiring root access.

---

## ⚠️ DISCLAIMER
> **WARNING:** Use only on authorized devices. Flashing an incorrect ROM can cause a **hard brick** due to the lack of advanced device detection in this initial release. Use at your own risk.

---

### 📋 Requirements
1. **Termux** & **Termux:API** (Recommended via **F-Droid**).
2. **Stable internet connection** (For first-time setup).
3. **Data exchange cable** & **stable OTG adapter**.

---

### ⚙️ Environment Setup

1. **Setup device storage in Termux:**
   ```bash
   termux-setup-storage
   ```

2. **Install dependencies and grant permissions:**
   ```bash
   cd MiFlash
   bash setup.sh
   chmod +x flashTool.sh
   ```

3. **Configure API:**
   ```bash
   cd
   ```
   *(Open the **Termux:API** app and grant all required permissions)*

---

### 🛠️ How to Use

1. **Connect Devices:** Connect the host and target devices via OTG adapter and data cable.
2. **Boot Fastboot:** Power off the target device, then hold **Power + Volume Down** until the **FASTBOOT** logo appears.
3. **Run Tool:**
   ```bash
   cd MiFlash
   ./flashTool.sh
   ```
