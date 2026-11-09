# Mi Flash Tool
Credits: Fastboot binaries provided by nohajc/termux-adb.
This tool is **lightweight** and useful for both **MIUI** and **Xiaomi HyperOS** users. It **automates** the ROM flashing process on **Redmi** and **Poco** devices. It is a good option for **mobile-to-mobile ROM flashing** because it **doesn't need root access**.
>## DISCLAIMER: This tool is made only for authorized devices. Never use it on stolen devices. A wrong ROM can cause a hard brick because this is the initial release of the tool and does not contain any advanced device detection logic. Use it at your own risk.
###Requirements:
1. **Termux** and **Termux:API** installed from **F-Droid**.
2. **Stable internet connection** for the first setup.
3. **Data exchange cable** and a **stable OTG adapter**.
###Environment setup:
1. Setup your device storage with Termux. Open Termux and run:
```bash
termux-setup-storage
```
Now you can access your file manager via this path `/storage/shared`.
2. At first use, you need to **install the dependencies** and setup them. You also need to give **executable permission** to the script. Run:
```bash
cd MiFlash
bash setup.sh
chmod +x flashTool.sh
```
3. Change directory to the **home directory**:
```bash
cd
```
4. Open **Termux:API** and give **essential permissions**.
###🛠️How to use:
1. Connect your device with the target device using an **OTG adapter** and **data cable** properly.
2. Reboot the target device into **fastboot mode**. Power off your device, then press `Power button + Volume down` until it shows **fastboot**.
3. Open **Termux** then run:
```bash
cd MiFlash
./flashTool.sh
```
