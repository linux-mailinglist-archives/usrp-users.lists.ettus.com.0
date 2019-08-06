Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 829D9832FA
	for <lists+usrp-users@lfdr.de>; Tue,  6 Aug 2019 15:41:43 +0200 (CEST)
Received: from [::1] (port=45774 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1huzie-0003cN-Tz; Tue, 06 Aug 2019 09:41:40 -0400
Received: from mail.chora.dk ([87.48.158.238]:33160)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <tf@chora.dk>) id 1huzib-0003X5-7z
 for usrp-users@lists.ettus.com; Tue, 06 Aug 2019 09:41:37 -0400
Received: from localhost (localhost [127.0.0.1])
 by mail.chora.dk (Postfix) with ESMTP id 049F438C3E1
 for <usrp-users@lists.ettus.com>; Tue,  6 Aug 2019 15:40:21 +0200 (CEST)
Received: from mail.chora.dk ([127.0.0.1])
 by localhost (hardy.chora [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eKYYSt18vMIn for <usrp-users@lists.ettus.com>;
 Tue,  6 Aug 2019 15:40:20 +0200 (CEST)
Received: from tfabric (unknown [192.168.100.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: tf)
 by mail.chora.dk (Postfix) with ESMTPSA id E157438341E
 for <usrp-users@lists.ettus.com>; Tue,  6 Aug 2019 15:40:20 +0200 (CEST)
To: <usrp-users@lists.ettus.com>
Date: Tue, 6 Aug 2019 15:40:53 +0200
Message-ID: <05fb01d54c5c$91486280$b3d92780$@chora.dk>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdVMXISrlRRgqLbLRQakx5ZheFWjBQ==
Content-Language: en-dk
Subject: [USRP-users] b210 USB detect problem
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Thomas Fabricius via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Thomas Fabricius <tf@chora.dk>
Content-Type: multipart/mixed; boundary="===============8281228534362861855=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multipart message in MIME format.

--===============8281228534362861855==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_05FC_01D54C6D.54D43FC0"
Content-Language: en-dk

This is a multipart message in MIME format.

------=_NextPart_000_05FC_01D54C6D.54D43FC0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

we have a number b210s that has USB detect problems. We have equipment =
where the power can suddenly disappear, and then the system does not =
come up right and there is (yet) no programmatic way to resolve the =
problem, so we have to get in physical contact with the system.

Any one who knows of a workaround (pls. read below before =
answering)=E2=80=A6

=20

*PC cannot detect B210 USB device on cold boot (after for instance a =
power break)

*The B210 USB device is simply not recognized by the PC.

*The B210 has an attached GPSDO and external power attached.

*This happens on multiple systems and cannot be attributed to a single =
PC type nor B210 device.

=20

Steps to reproduce:

1. Remove all power from PC and B210.

2. Insert USB into PC.

3. Apply power to the devices.

4. Start the PC.

5. The PC is after boot into linux to see the B210 board.

6. Errors are displayed in the dmesg kernel log:

=20

[   23.884317] usb 1-4: new high-speed USB device number 3 using =
xhci_hcd [   29.024313] usb 1-4: device descriptor read/64, error -110 [ =
  44.640330] usb 1-4: device descriptor read/64, error -110 [   =
44.748356] usb usb1-port4: attempt power cycle [   45.400311] usb 1-4: =
new high-speed USB device number 4 using xhci_hcd [   56.240225] usb =
1-4: device not accepting address 4, error -62 [   56.368230] usb 1-4: =
new high-speed USB device number 5 using xhci_hcd [   66.992306] usb =
1-4: device not accepting address 5, error -62 [   66.992363] usb =
usb1-port4: unable to enumerate USB device

=20

The "device descriptor read/64, error -110" means that USB power drain =
was exceeded by the USB device.

=20

7. Our application prints:

=20

Error: LookupError: KeyError: No devices found for -----> Device =
Address:

    num_recv_frames: 512

=20

8. The device is totally absent, so its not possible to for instance =
run:  $UHD_INSTALL_PREFIX/utils/b2xx_fx3_utils --reset-device

=20

Workarounds that works:

* Physically unplug the USB device and insert it again in the same USB =
port. (sometimes it though seems like this does not work either, and one =
need to switch to a new USB port on another USB HUB on the PC)

=20

* Physically press the reset switch (S700) on the B210.

=20

* Remove external power supply from B210 before cold boot.

=20

Workarounds that haven't worked:

* Rebooting the PC, by software and/or by physically switching it off =
and then on (power cable off and on).

=20

* Try to programmatically remove power from USB device:

=20

    lsusb

    echo suspend > sudo tee /sys/bus/usb/devices/usb1/power/level

    echo suspend > sudo tee /sys/bus/usb/devices/usb2/power/level

    lsusb

    echo on > sudo tee /sys/bus/usb/devices/usb1/power/level

    echo on > sudo tee /sys/bus/usb/devices/usb2/power/level

    lsusb

=20

* Try to remove the highspeed USB driver:

=20

    lsusb

    echo "0000:00:14.0" | sudo tee /sys/bus/pci/drivers/xhci_hcd/unbind

    lsusb

    dmesg

    echo "0000:00:14.0" | sudo tee /sys/bus/pci/drivers/xhci_hcd/bind

    lsusb

=20

* Remove and re-enumerate the USB controller PCI device:

=20

    lsusb

    lspci

    echo 1 | sudo tee /sys/devices/pci0000\:00/0000\:00\:14.0/remove

    lsusb

    lspci

    echo 1 | sudo tee /sys/bus/pci/rescan

    lsusb

    lspci

=20

Workarounds that haven't been tried:

* Use an USB3 hub that is externally powered.

* Install a larger capacitor in parallel with C716/S700 on the B210 =
board to delay USB startup by the device. Somebody recall installing a =
100uF capacitor. But this doesn=E2=80=99t seem like a root cause fix.

* Circumvent power switching components (solder a short over Q600) such =
that external power is always used and not disconnected before any USB =
communication. Any side effects ?

=20

Root cause:

We believe the root cause is the switching between USB and external =
power, in the LTC4412 U609 circuit. If external power is removed before =
cold boot, the device comes up correctly while external B210 power is =
not attached.

Also worth noting, is that this may only happen when a GPSDO is =
attached. We haven't tried removing the GPSDO, since it is rather =
fragile.

Another =E2=80=9Cmalicious=E2=80=9D behavior is when external power is =
on and USB is attached then Q600 will go on if it is not already on. =
When USB is removed Q600 will stay on, ie. the circuitry will not come =
back to the state it had when everything was powered on from scratch.

=20

=20


------=_NextPart_000_05FC_01D54C6D.54D43FC0
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3Den-DK =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span lang=3DEN-US>Hi,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>we have a number b210s that has USB =
detect problems. We have equipment where the power can suddenly =
disappear, and then the system does not come up right and there is (yet) =
no programmatic way to resolve the problem, so we have to get in =
physical contact with the system.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Any one who knows of a workaround =
(pls. read below before answering)=E2=80=A6<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>*PC cannot detect B210 USB =
device on cold boot (after for instance a power =
break)<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>*The B210 USB device is simply not recognized by the =
PC.<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US>*The =
B210 has an attached GPSDO and external power =
attached.<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>*This happens on multiple systems and cannot be attributed =
to a single PC type nor B210 device.<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>Steps to =
reproduce:<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>1. Remove all power from PC and =
B210.<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US>2. =
Insert USB into PC.<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>3. Apply power to the devices.<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>4. Start the =
PC.<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US>5. =
The PC is after boot into linux to see the B210 =
board.<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>6. Errors are displayed in the dmesg kernel =
log:<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>[&nbsp;&nbsp; 23.884317] usb 1-4: new high-speed USB device =
number 3 using xhci_hcd [&nbsp;&nbsp; 29.024313] usb 1-4: device =
descriptor read/64, error -110 [&nbsp;&nbsp; 44.640330] usb 1-4: device =
descriptor read/64, error -110 [&nbsp;&nbsp; 44.748356] usb usb1-port4: =
attempt power cycle [&nbsp;&nbsp; 45.400311] usb 1-4: new high-speed USB =
device number 4 using xhci_hcd [&nbsp;&nbsp; 56.240225] usb 1-4: device =
not accepting address 4, error -62 [&nbsp;&nbsp; 56.368230] usb 1-4: new =
high-speed USB device number 5 using xhci_hcd [&nbsp;&nbsp; 66.992306] =
usb 1-4: device not accepting address 5, error -62 [&nbsp;&nbsp; =
66.992363] usb usb1-port4: unable to enumerate USB =
device<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>The &quot;device descriptor read/64, error -110&quot; means =
that USB power drain was exceeded by the USB =
device.<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>7. Our application prints:<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>Error: LookupError: KeyError: No =
devices found for -----&gt; Device Address:<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>&nbsp;&nbsp;&nbsp; =
num_recv_frames: 512<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>8. The device is totally absent, so its not possible to for =
instance run:</span><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Verdana",sans-serif;color:black;ba=
ckground:white'> =C2=A0$UHD_INSTALL_PREFIX/utils/b2xx_fx3_utils =
--reset-device<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>Workarounds that works:<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>* Physically unplug the USB =
device and insert it again in the same USB port. (sometimes it though =
seems like this does not work either, and one need to switch to a new =
USB port on another USB HUB on the PC)<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>* Physically press the reset =
switch (S700) on the B210.<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>* Remove external power supply =
from B210 before cold boot.<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>Workarounds that haven't =
worked:<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>* Rebooting the PC, by software and/or by physically =
switching it off and then on (power cable off and =
on).<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>* Try to programmatically remove power from USB =
device:<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp; lsusb<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>&nbsp;&nbsp;&nbsp; echo suspend =
&gt; sudo tee =
/sys/bus/usb/devices/usb1/power/level<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>&nbsp;&nbsp;&nbsp; echo suspend =
&gt; sudo tee =
/sys/bus/usb/devices/usb2/power/level<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>&nbsp;&nbsp;&nbsp; =
lsusb<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp; echo on &gt; sudo tee =
/sys/bus/usb/devices/usb1/power/level<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>&nbsp;&nbsp;&nbsp; echo on &gt; =
sudo tee /sys/bus/usb/devices/usb2/power/level<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>&nbsp;&nbsp;&nbsp; =
lsusb<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>* Try to remove the highspeed USB =
driver:<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp; lsusb<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>&nbsp;&nbsp;&nbsp; echo =
&quot;0000:00:14.0&quot; | sudo tee =
/sys/bus/pci/drivers/xhci_hcd/unbind<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>&nbsp;&nbsp;&nbsp; =
lsusb<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp; dmesg<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>&nbsp;&nbsp;&nbsp; echo =
&quot;0000:00:14.0&quot; | sudo tee =
/sys/bus/pci/drivers/xhci_hcd/bind<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>&nbsp;&nbsp;&nbsp; =
lsusb<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>* Remove and re-enumerate the USB controller PCI =
device:<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp; lsusb<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>&nbsp;&nbsp;&nbsp; =
lspci<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp; echo 1 | sudo tee =
/sys/devices/pci0000\:00/0000\:00\:14.0/remove<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>&nbsp;&nbsp;&nbsp; =
lsusb<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp; lspci<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>&nbsp;&nbsp;&nbsp; echo 1 | sudo =
tee /sys/bus/pci/rescan<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>&nbsp;&nbsp;&nbsp; =
lsusb<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp; lspci<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>Workarounds that haven't been =
tried:<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US>* =
Use an USB3 hub that is externally powered.<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>* Install a larger capacitor in =
parallel with C716/S700 on the B210 board to delay USB startup by the =
device. Somebody recall installing a 100uF capacitor. But this =
doesn=E2=80=99t seem like a root cause fix.<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>* Circumvent power switching =
components (solder a short over Q600) such that external power is always =
used and not disconnected before any USB communication. Any side effects =
?<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>Root cause:<o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>We believe the root cause is the =
switching between USB and external power, in the LTC4412 U609 circuit. =
If external power is removed before cold boot, the device comes up =
correctly while external B210 power is not =
attached.<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>Also worth noting, is that this may only happen when a =
GPSDO is attached. We haven't tried removing the GPSDO, since it is =
rather fragile.<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>Another =E2=80=9Cmalicious=E2=80=9D behavior is when =
external power is on and USB is attached then Q600 will go on if it is =
not already on. When USB is removed Q600 will stay on, ie. the circuitry =
will not come back to the state it had when everything was powered on =
from scratch.<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>
------=_NextPart_000_05FC_01D54C6D.54D43FC0--



--===============8281228534362861855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8281228534362861855==--


