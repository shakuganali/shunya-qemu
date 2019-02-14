Emulate Shunya OS using QEMU
===============================

Pre-requisites
---------------

Hardware : 
------------------
 * Laptop with Ubuntu 16.04 installed 


Software :
----------------------------
  
  * qemu
  * remmina
  
Install them by running these commands

```
sudo apt-get update

sudo apt install qemu 

```
Remmina is installed by default on Ubuntu 16.04, if not installed run command
```
sudo apt-get update

sudo apt install remmina
```

Steps :
---------
Before trying out these steps make sure you have all the pre-requisites 

Step 1 : Cloning the Project
----------------------------
on PC/Laptop run command to clone this project
```
$ git clone https://github.com/shunyaos/shunya-qemu.git
```

Step 2: Starting QEMU on PC/Laptop
----------------------------------
Run these commands
```
$ cd shunya-qemu
$ sudo ./qemu-shunya-arm64.sh -c

```

![Screenshot1](extra/001.png?raw=true "QEMU Terminal")


Step 3: Starting Reminna
-------------------------------------
Open another terminal and run this command

```
$ remmina
```
Step 4: Bringing up display
-------------------------------------
When the Reminna opens up

 * Select VNC in the checkbox
 * Copy the numbers dispalyed when you ran the ./qemu-shunya-arm64.sh script and paste them into the box next to VNC
 * Press connect

![Screenshot2](extra/002.png?raw=true "Remmina")


Final Output
-----------------

![Screenshot3](extra/003.png?raw=true "Final Output")



Please help us out by filling the google form :- https://docs.google.com/forms/d/e/1FAIpQLSf1Cu0XPMDGNQDCKPsYBh_QX0oOT79j_J4-hGojHQCZSWJ-Hw/viewform

