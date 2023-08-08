Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B6D7738C1
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 09:57:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 130E63849D1
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 03:57:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691481451; bh=MF6qsmTbBkEqjRXJBlP3vewJ2OQ01fJ8a/Oqv71JPnw=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ED/smfwJMYI/algSnirxfoLiwCoduMSDt0sZZCwp5x/u73jdn3Q82p9pnwSpIqQpX
	 S4WvkVwd9Wck0oKQImzWwuiiO+n+G/hvOavCDaqWNwweV9KN1QNzL29ZMHm2UBaSxK
	 EKxJBkqSnvGG+nRwVKrLjqOAwbaXgOqMh7CAf3sg9e2UGDGPPqoCBGNO1EIU69QWb7
	 q+4yygIgHMzDQHgZVqq6Ux5hzUo7kcEWraXSpmtyTIhZtMyBgnBnZ/gXPuLS225jio
	 vW7fnBr2VVBCHrXa5/9n/zNrrSZbnx0GsRnb1D+r63EZ8IOGI9Kilx8gK6b7zuKgeo
	 +IYoHLbu3HyHw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 876CC383DB9
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 03:56:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691481417; bh=qFFC6qyTGn+yhxqZCVKN0rTRcXyouT9M8s/N95sZNng=;
	h=Date:To:From:Subject:From;
	b=PydlwzOaF5d3+Gw1vsgBGW7C0dEgyV5CfQPVoz/rghdgg3eL/di1b7aT1tRuN868i
	 aNI3T60xL5uCK1gBIttGUkcFl/tUfY4q1/7Yd5r4WJKA6ilhmpv7+HEUgDknHDi8Dg
	 kVgrFEXYm1YrjCqmZazUywSpeQse4ES6DNsjX9gQhBYemZ2wAOWhYdQxdIH2pT9P8n
	 EEsfmVZ/oFDIPpIQ4wx3ELNv8Quwwca9L07cbzxu7fQ5nigw41YoulXu3L9T63oZgD
	 kPFfA7M7bYx2+UQRI8Q7Zzcf+XzpCtraHxxR40lri1yl2Fult1FmlQH86gK7XGIwDy
	 WEBzrn3ybs2FA==
Date: Tue, 8 Aug 2023 07:56:57 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <viSAyZ66GXhV7V2Jm3fjUlq7XNuQh7OojevJXuMvmA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: XLZAEVWZNRMZ2NV4SFGI7NFXRAD67U3H
X-Message-ID-Hash: XLZAEVWZNRMZ2NV4SFGI7NFXRAD67U3H
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XLZAEVWZNRMZ2NV4SFGI7NFXRAD67U3H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1811525043645353717=="

This is a multi-part message in MIME format.

--===============1811525043645353717==
Content-Type: multipart/alternative;
 boundary="b1_viSAyZ66GXhV7V2Jm3fjUlq7XNuQh7OojevJXuMvmA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_viSAyZ66GXhV7V2Jm3fjUlq7XNuQh7OojevJXuMvmA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I have an Ettus B210 device that I have been experimenting with for some =
time. I had a need to turn on and off the device on a remote host. I inte=
nded to apply the bootloader for fx3 to the device. While playing around =
with the b2xx_fx3_utils, I loaded the bootloader of the device with =E2=80=
=9Cusrp_b210_fpga.rpt=E2=80=9D by mistake. After following the steps by B=
enito Horta discussed in the [B200 shows up as Cypress FX3 USB Bootloader=
 Device FIXED steps taken](https://usrp-users.ettus.narkive.com/7S6MYwCo/=
b200-shows-up-as-cypress-fx3-usb-bootloader-device-fixed-steps-taken "htt=
ps://usrp-users.ettus.narkive.com/7S6MYwCo/b200-shows-up-as-cypress-fx3-u=
sb-bootloader-device-fixed-steps-taken"), I managed to recover from this =
situation somewhat.

Problem:

* Device cannot be initialized though api calls (such as from Python) or =
uhd_usrp_probe etc.

Error Message:

* "Error: RuntimeError: B200 unknown product code: 0x3120"

Cause:

* My suspicion is that the device mb eeprom: serial, name and product ID =
are corrupted (from what I understand from the error message and the uhd_=
find_devices output).

Note that the uhd_find_devices output is,

\[INFO\] \[UHD\] linux; GNU C++ version 11.3.0; Boost_107400; DPDK_21.11;=
 UHD_4.3.0.0-release\
\--------------------------------------------------\
\-- UHD Device 0\
\--------------------------------------------------\
Device Address:\
=C2=A0 =C2=A0 serial: SP48A1s: \
=C2=A0 =C2=A0 name: 6 =C2=A0 =C2=A025% =C2=A0\
=C2=A0 =C2=A0 product: B2??\
=C2=A0 =C2=A0 type: b200

I am using UHD-4.3 and Ubuntu 22.04. I tried loading firmware, FGPA and b=
ootloader files using ./b2xx_fx3_utils.

I read [About the Motherboard and Daughtercard EEPROM on USRP Devices](ht=
tps://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_USRP_=
Devices "https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPR=
OM_on_USRP_Devices") and I need guidance on using the ./usrp_burn_mb_eepr=
om tool. Has anyone had anything like happened before? I worry the eeprom=
 writes are undoable, nevertheless, any suggestion about the issue is app=
reciated.

Cheers,

Eden.

--b1_viSAyZ66GXhV7V2Jm3fjUlq7XNuQh7OojevJXuMvmA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I have an Ettus B210 device that I have been experimenting =
with for some time. I had a need to turn on and off the device on a remote =
host. I intended to apply the bootloader for fx3 to the device. While playi=
ng around with the b2xx_fx3_utils, I loaded the bootloader of the device wi=
th =E2=80=9Cusrp_b210_fpga.rpt=E2=80=9D by mistake. After following the ste=
ps by Benito Horta discussed in the <a href=3D"https://usrp-users.ettus.nar=
kive.com/7S6MYwCo/b200-shows-up-as-cypress-fx3-usb-bootloader-device-fixed-=
steps-taken" title=3D"https://usrp-users.ettus.narkive.com/7S6MYwCo/b200-sh=
ows-up-as-cypress-fx3-usb-bootloader-device-fixed-steps-taken">B200 shows u=
p as Cypress FX3 USB Bootloader Device FIXED steps taken</a>, I managed to =
recover from this situation somewhat.</p><p>Problem:</p><ul><li><p>Device c=
annot be initialized though api calls (such as from Python) or uhd_usrp_pro=
be etc.</p></li></ul><p>Error Message:</p><ul><li><p>"Error: RuntimeError: =
B200 unknown product code: 0x3120"</p></li></ul><p>Cause:</p><ul><li><p>My =
suspicion is that the device mb eeprom: serial, name and product ID are cor=
rupted (from what I understand from the error message and the uhd_find_devi=
ces output).</p></li></ul><p>Note that the uhd_find_devices output is,</p><=
p>[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; DPDK_21.11; UHD=
_4.3.0.0-release<br>--------------------------------------------------<br>-=
- UHD Device 0<br>--------------------------------------------------<br>Dev=
ice Address:<br>&nbsp; &nbsp; serial: SP48A1s: <br>&nbsp; &nbsp; name: 6 &n=
bsp; &nbsp;25% &nbsp;<br>&nbsp; &nbsp; product: B2??<br>&nbsp; &nbsp; type:=
 b200<br><br></p><p>I am using UHD-4.3 and Ubuntu 22.04. I tried loading fi=
rmware, FGPA and bootloader files using ./b2xx_fx3_utils.</p><p>I read <a h=
ref=3D"https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_o=
n_USRP_Devices" title=3D"https://kb.ettus.com/About_the_Motherboard_and_Dau=
ghtercard_EEPROM_on_USRP_Devices">About the Motherboard and Daughtercard EE=
PROM on USRP Devices</a> and I need guidance on using the ./usrp_burn_mb_ee=
prom tool. Has anyone had anything like happened before? I worry the eeprom=
 writes are undoable, nevertheless, any suggestion about the issue is appre=
ciated.</p><p><br></p><p>Cheers,</p><p>Eden.</p>

--b1_viSAyZ66GXhV7V2Jm3fjUlq7XNuQh7OojevJXuMvmA--

--===============1811525043645353717==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1811525043645353717==--
