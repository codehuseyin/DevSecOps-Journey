# Nmap 7.94SVN scan initiated Wed Apr 29 14:01:26 2026 as: nmap -sC -O -oN vuln-scan-report.md scanme.nmap.org
Nmap scan report for scanme.nmap.org (45.33.32.156)
Host is up (0.090s latency).
Other addresses for scanme.nmap.org (not scanned): 2600:3c01::f03c:91ff:fe18:bb2f
Not shown: 996 closed tcp ports (reset)
PORT      STATE SERVICE
22/tcp    open  ssh
| ssh-hostkey: 
|   1024 ac:00:a0:1a:82:ff:cc:55:99:dc:67:2b:34:97:6b:75 (DSA)
|   2048 20:3d:2d:44:62:2a:b0:5a:9d:b5:b3:05:14:c2:a6:b2 (RSA)
|   256 96:02:bb:5e:57:54:1c:4e:45:2f:56:4c:4a:24:b2:57 (ECDSA)
|_  256 33:fa:91:0f:e0:e1:7b:1f:6d:05:a2:b0:f1:54:41:56 (ED25519)
80/tcp    open  http
|_http-favicon: Nmap Project
|_http-title: Go ahead and ScanMe!
9929/tcp  open  nping-echo
31337/tcp open  Elite
Device type: general purpose|storage-misc|router|WAP|load balancer
Running (JUST GUESSING): Linux 2.6.X (92%), Netgear embedded (92%), Synology embedded (90%), Ubiquiti embedded (88%), F5 Networks embedded (87%), F5 Networks TMOS 11.1.X (87%), HP embedded (86%)
OS CPE: cpe:/o:linux:linux_kernel:2.6.32 cpe:/o:linux:linux_kernel:2.6 cpe:/h:netgear:readynas_3200 cpe:/h:synology:rt1900ac cpe:/o:f5:tmos:11.1 cpe:/o:linux:linux_kernel cpe:/h:hp:p2000_msa
Aggressive OS guesses: Linux 2.6.32 (92%), Netgear ReadyNAS 3200 NAS device (Linux 2.6) (92%), Synology RT1900ac router (90%), Linux 2.6.11 - 2.6.18 (89%), Ubiquiti WAP (Linux 2.6.32) (88%), F5 BIG-IP load balancer (87%), F5 3600 LTM load balancer (87%), HP P2000 MSA storage controller (86%)
No exact OS matches for host (test conditions non-ideal).

OS detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Wed Apr 29 14:01:51 2026 -- 1 IP address (1 host up) scanned in 24.87 seconds
