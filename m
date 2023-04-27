Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8960C6F0A3A
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 18:49:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D68093845A5
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 12:49:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682614166; bh=iruGoX8qNr00lhboAvV5n5PehlD25S9n70rRDYEQ4as=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=AlPPQyCkN48zMVM+FcYm01ZKg5S3eD9YjvFLPJgmgZa8L4iLWeS620gMSB2lesigE
	 ffvLDOZDhY5qPKg9Q5o2RdzMwatm0b+7xdp+ZgtVgP9BbF9shUrWDo40bBX6IOvgR/
	 zmkdoKp5OfAE/17j79Wt58brVeN8b1T4MxvouJm0pGKZDSsQr989drP9FNwjxzZKGu
	 px1QRPLa1Ex/MsEn/FrWCNtWmplnNNUqe8RAVqTsN9UCauObmkdeDp3dd6cgC8C6Wb
	 /tb37EJLHUlt/BasIVfAN4+qxL00icCf3ATF6+dgDpwvM9GecQDQF0ecN5F3nPEDHT
	 TJYDI4tvJWQtA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2F43A384524
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 12:48:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682614121; bh=jjgs3RI3KmX9HW0Bk1MFMcdob6OQKZyd4GImSXOSyww=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=u1+d6ua8y1/9qc0GvNUk3qtjXwWW1f6SuDfblup17rBIQaLYU2mWlyjjtC3Epj+0G
	 iCbrd78F80e5ZrDXQ5amlNjMfhUAeC3LuIYxUL5txlEb99l8wJcky1SsdK0Plf2y8J
	 4refwImfRLy8qywmXKqkQEl6MsP+ikdOV8nALIIUIrfaD5pK8MxwqhjRGhAMM6WLKU
	 uiWKOBz7pEoZE545l/0UqbuiLHGGPBE1Xo8KxeYhMS7JpANk3Zb8//Rc2ktJxJGRrI
	 /JBfE/kLQ226R8p8VP5TWL6jOlKzSOUt1DoRfdTriEbSPnMErTrl39kUcZRTae/fKL
	 Xbc7KlQLUEQtw==
Date: Thu, 27 Apr 2023 16:48:41 +0000
To: usrp-users@lists.ettus.com
From: david.fernandes@viveris.fr
Message-ID: <yt4UEZ687iUihgikr2ZxfqHpVGvs2v2Y7goikrlVPo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 53ccbae5-ec74-e262-3924-d7ceb035f220@gmail.com
MIME-Version: 1.0
Message-ID-Hash: I3V223WGHGQZ3Q2LF5DMBSYQ2ZCNHTIV
X-Message-ID-Hash: I3V223WGHGQZ3Q2LF5DMBSYQ2ZCNHTIV
X-MailFrom: david.fernandes@viveris.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I3V223WGHGQZ3Q2LF5DMBSYQ2ZCNHTIV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6949127614481213639=="

This is a multi-part message in MIME format.

--===============6949127614481213639==
Content-Type: multipart/alternative;
 boundary="b1_yt4UEZ687iUihgikr2ZxfqHpVGvs2v2Y7goikrlVPo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_yt4UEZ687iUihgikr2ZxfqHpVGvs2v2Y7goikrlVPo
Content-Type: text/plain; charset=us-ascii

Yes, of course  :

\[INFO\] \[UHD\] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.1.0.6-0-g1a5b4fd2

\[INFO\] \[X300\] X300 initialization sequence...

\[INFO\] \[X300\] Maximum frame size: 1472 bytes.

\[INFO\] \[X300\] Radio 1x clock: 200 MHz

  _____________________________________________________

 /

|       Device: X-Series Device

|     _____________________________________________________

|    /

|   |       Mboard: X310

|   |   revision: 7

|   |   revision_compat: 7

|   |   product: 30811

|   |   mac-addr0: 00:80:2f:21:e3:2f

|   |   mac-addr1: 00:80:2f:21:e3:30

|   |   gateway: 192.168.10.1

|   |   ip-addr0: 10.0.0.2

|   |   subnet0: 255.255.255.0

|   |   ip-addr1: 192.168.10.3

|   |   subnet1: 255.255.255.0

|   |   ip-addr2: 192.168.100.2

|   |   subnet2: 255.255.255.0

|   |   ip-addr3: 192.168.100.3

|   |   subnet3: 255.255.255.0

|   |   serial: 30AABDD

|   |   FW Version: 6.0

|   |   FPGA Version: 38.0

|   |   FPGA git hash: 26793b8

|   |   

|   |   Time sources:  internal, external, gpsdo

|   |   Clock sources: internal, external, gpsdo

|   |   Sensors: ref_locked

|     _____________________________________________________

|    /

|   |       RFNoC blocks on this device:

|   |   

|   |   \* 0/DDC#0

|   |   \* 0/DDC#1

|   |   \* 0/DUC#0

|   |   \* 0/DUC#1

|   |   \* 0/Radio#0

|   |   \* 0/Radio#1

|   |   \* 0/Replay#0

|     _____________________________________________________

|    /

|   |       Static connections on this device:

|   |   

|   |   \* 0/SEP#0:0==>0/DUC#0:0

|   |   \* 0/DUC#0:0==>0/Radio#0:0

|   |   \* 0/Radio#0:0==>0/DDC#0:0

|   |   \* 0/DDC#0:0==>0/SEP#0:0

|   |   \* 0/Radio#0:1==>0/DDC#0:1

|   |   \* 0/DDC#0:1==>0/SEP#1:0

|   |   \* 0/SEP#2:0==>0/DUC#1:0

|   |   \* 0/DUC#1:0==>0/Radio#1:0

|   |   \* 0/Radio#1:0==>0/DDC#1:0

|   |   \* 0/DDC#1:0==>0/SEP#2:0

|   |   \* 0/Radio#1:1==>0/DDC#1:1

|   |   \* 0/DDC#1:1==>0/SEP#3:0

|   |   \* 0/SEP#4:0==>0/Replay#0:0

|   |   \* 0/Replay#0:0==>0/SEP#4:0

|   |   \* 0/SEP#5:0==>0/Replay#0:1

|   |   \* 0/Replay#0:1==>0/SEP#5:0

|     _____________________________________________________

|    /

|   |       TX Dboard: 0/Radio#0

|   |   ID: WBX-120 (0x0080)

|   |   Serial: 3088DF5

|   |   ID: WBX + Simple GDB, WBX v3 + Simple GDB, WBX v4 + Simple GDB, WBX-120 + Simple GDB (0x004f)

|   |   Serial: 308595F

|   |     _____________________________________________________

|   |    /

|   |   |       TX Frontend: 0

|   |   |   Name: WBX-120 TX+GDB

|   |   |   Antennas: TX/RX, CAL

|   |   |   Sensors: lo_locked

|   |   |   Freq range: 25.000 to 2200.000 MHz

|   |   |   Gain range PGA0: 0.0 to 31.0 step 1.0 dB

|   |   |   Bandwidth range: 120000000.0 to 120000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

|     _____________________________________________________

|    /

|   |       RX Dboard: 0/Radio#0

|   |   ID: WBX-120, WBX-120 + Simple GDB (0x0081)

|   |   Serial: 3088DF5

|   |     _____________________________________________________

|   |    /

|   |   |       RX Frontend: 0

|   |   |   Name: WBX-120 RX+GDB

|   |   |   Antennas: TX/RX, RX2, CAL

|   |   |   Sensors: lo_locked

|   |   |   Freq range: 25.000 to 2200.000 MHz

|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB

|   |   |   Bandwidth range: 120000000.0 to 120000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

|     _____________________________________________________

|    /

|   |       TX Dboard: 0/Radio#1

|   |   ID: WBX-120 (0x0080)

|   |   Serial: 3088D9A

|   |   ID: WBX + Simple GDB, WBX v3 + Simple GDB, WBX v4 + Simple GDB, WBX-120 + Simple GDB (0x004f)

|   |   Serial: 30858A1

|   |     _____________________________________________________

|   |    /

|   |   |       TX Frontend: 0

|   |   |   Name: WBX-120 TX+GDB

|   |   |   Antennas: TX/RX, CAL

|   |   |   Sensors: lo_locked

|   |   |   Freq range: 25.000 to 2200.000 MHz

|   |   |   Gain range PGA0: 0.0 to 31.0 step 1.0 dB

|   |   |   Bandwidth range: 120000000.0 to 120000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

|     _____________________________________________________

|    /

|   |       RX Dboard: 0/Radio#1

|   |   ID: WBX-120, WBX-120 + Simple GDB (0x0081)

|   |   Serial: 3088D9A

|   |     _____________________________________________________

|   |    /

|   |   |       RX Frontend: 0

|   |   |   Name: WBX-120 RX+GDB

|   |   |   Antennas: TX/RX, RX2, CAL

|   |   |   Sensors: lo_locked

|   |   |   Freq range: 25.000 to 2200.000 MHz

|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB

|   |   |   Bandwidth range: 120000000.0 to 120000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

--b1_yt4UEZ687iUihgikr2ZxfqHpVGvs2v2Y7goikrlVPo
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Yes, of course  :</p><p>[INFO] [UHD] linux; GNU C++ version 11.3.0; Boos=
t_107400; UHD_4.1.0.6-0-g1a5b4fd2</p><p>[INFO] [X300] X300 initialization s=
equence...</p><p>[INFO] [X300] Maximum frame size: 1472 bytes.</p><p>[INFO]=
 [X300] Radio 1x clock: 200 MHz</p><p>  ___________________________________=
__________________</p><p> /</p><p>|       Device: X-Series Device</p><p>|  =
   _____________________________________________________</p><p>|    /</p><p=
>|   |       Mboard: X310</p><p>|   |   revision: 7</p><p>|   |   revision_=
compat: 7</p><p>|   |   product: 30811</p><p>|   |   mac-addr0: 00:80:2f:21=
:e3:2f</p><p>|   |   mac-addr1: 00:80:2f:21:e3:30</p><p>|   |   gateway: 19=
2.168.10.1</p><p>|   |   ip-addr0: 10.0.0.2</p><p>|   |   subnet0: 255.255.=
255.0</p><p>|   |   ip-addr1: 192.168.10.3</p><p>|   |   subnet1: 255.255.2=
55.0</p><p>|   |   ip-addr2: 192.168.100.2</p><p>|   |   subnet2: 255.255.2=
55.0</p><p>|   |   ip-addr3: 192.168.100.3</p><p>|   |   subnet3: 255.255.2=
55.0</p><p>|   |   serial: 30AABDD</p><p>|   |   FW Version: 6.0</p><p>|   =
|   FPGA Version: 38.0</p><p>|   |   FPGA git hash: 26793b8</p><p>|   |   <=
/p><p>|   |   Time sources:  internal, external, gpsdo</p><p>|   |   Clock =
sources: internal, external, gpsdo</p><p>|   |   Sensors: ref_locked</p><p>=
|     _____________________________________________________</p><p>|    /</p=
><p>|   |       RFNoC blocks on this device:</p><p>|   |   </p><p>|   |   *=
 0/DDC#0</p><p>|   |   * 0/DDC#1</p><p>|   |   * 0/DUC#0</p><p>|   |   * 0/=
DUC#1</p><p>|   |   * 0/Radio#0</p><p>|   |   * 0/Radio#1</p><p>|   |   * 0=
/Replay#0</p><p>|     _____________________________________________________=
</p><p>|    /</p><p>|   |       Static connections on this device:</p><p>| =
  |   </p><p>|   |   * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0</p><p>|   |   * 0/DUC#0=
:0=3D=3D&gt;0/Radio#0:0</p><p>|   |   * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0</p><=
p>|   |   * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0</p><p>|   |   * 0/Radio#0:1=3D=3D&=
gt;0/DDC#0:1</p><p>|   |   * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0</p><p>|   |   * 0=
/SEP#2:0=3D=3D&gt;0/DUC#1:0</p><p>|   |   * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0<=
/p><p>|   |   * 0/Radio#1:0=3D=3D&gt;0/DDC#1:0</p><p>|   |   * 0/DDC#1:0=3D=
=3D&gt;0/SEP#2:0</p><p>|   |   * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1</p><p>|   |=
   * 0/DDC#1:1=3D=3D&gt;0/SEP#3:0</p><p>|   |   * 0/SEP#4:0=3D=3D&gt;0/Repl=
ay#0:0</p><p>|   |   * 0/Replay#0:0=3D=3D&gt;0/SEP#4:0</p><p>|   |   * 0/SE=
P#5:0=3D=3D&gt;0/Replay#0:1</p><p>|   |   * 0/Replay#0:1=3D=3D&gt;0/SEP#5:0=
</p><p>|     _____________________________________________________</p><p>| =
   /</p><p>|   |       TX Dboard: 0/Radio#0</p><p>|   |   ID: WBX-120 (0x00=
80)</p><p>|   |   Serial: 3088DF5</p><p>|   |   ID: WBX + Simple GDB, WBX v=
3 + Simple GDB, WBX v4 + Simple GDB, WBX-120 + Simple GDB (0x004f)</p><p>| =
  |   Serial: 308595F</p><p>|   |     _____________________________________=
________________</p><p>|   |    /</p><p>|   |   |       TX Frontend: 0</p><=
p>|   |   |   Name: WBX-120 TX+GDB</p><p>|   |   |   Antennas: TX/RX, CAL</=
p><p>|   |   |   Sensors: lo_locked</p><p>|   |   |   Freq range: 25.000 to=
 2200.000 MHz</p><p>|   |   |   Gain range PGA0: 0.0 to 31.0 step 1.0 dB</p=
><p>|   |   |   Bandwidth range: 120000000.0 to 120000000.0 step 0.0 Hz</p>=
<p>|   |   |   Connection Type: IQ</p><p>|   |   |   Uses LO offset: No</p>=
<p>|     _____________________________________________________</p><p>|    /=
</p><p>|   |       RX Dboard: 0/Radio#0</p><p>|   |   ID: WBX-120, WBX-120 =
+ Simple GDB (0x0081)</p><p>|   |   Serial: 3088DF5</p><p>|   |     _______=
______________________________________________</p><p>|   |    /</p><p>|   |=
   |       RX Frontend: 0</p><p>|   |   |   Name: WBX-120 RX+GDB</p><p>|   =
|   |   Antennas: TX/RX, RX2, CAL</p><p>|   |   |   Sensors: lo_locked</p><=
p>|   |   |   Freq range: 25.000 to 2200.000 MHz</p><p>|   |   |   Gain ran=
ge PGA0: 0.0 to 31.5 step 0.5 dB</p><p>|   |   |   Bandwidth range: 1200000=
00.0 to 120000000.0 step 0.0 Hz</p><p>|   |   |   Connection Type: IQ</p><p=
>|   |   |   Uses LO offset: No</p><p>|     _______________________________=
______________________</p><p>|    /</p><p>|   |       TX Dboard: 0/Radio#1<=
/p><p>|   |   ID: WBX-120 (0x0080)</p><p>|   |   Serial: 3088D9A</p><p>|   =
|   ID: WBX + Simple GDB, WBX v3 + Simple GDB, WBX v4 + Simple GDB, WBX-120=
 + Simple GDB (0x004f)</p><p>|   |   Serial: 30858A1</p><p>|   |     ______=
_______________________________________________</p><p>|   |    /</p><p>|   =
|   |       TX Frontend: 0</p><p>|   |   |   Name: WBX-120 TX+GDB</p><p>|  =
 |   |   Antennas: TX/RX, CAL</p><p>|   |   |   Sensors: lo_locked</p><p>| =
  |   |   Freq range: 25.000 to 2200.000 MHz</p><p>|   |   |   Gain range P=
GA0: 0.0 to 31.0 step 1.0 dB</p><p>|   |   |   Bandwidth range: 120000000.0=
 to 120000000.0 step 0.0 Hz</p><p>|   |   |   Connection Type: IQ</p><p>|  =
 |   |   Uses LO offset: No</p><p>|     ___________________________________=
__________________</p><p>|    /</p><p>|   |       RX Dboard: 0/Radio#1</p><=
p>|   |   ID: WBX-120, WBX-120 + Simple GDB (0x0081)</p><p>|   |   Serial: =
3088D9A</p><p>|   |     ___________________________________________________=
__</p><p>|   |    /</p><p>|   |   |       RX Frontend: 0</p><p>|   |   |   =
Name: WBX-120 RX+GDB</p><p>|   |   |   Antennas: TX/RX, RX2, CAL</p><p>|   =
|   |   Sensors: lo_locked</p><p>|   |   |   Freq range: 25.000 to 2200.000=
 MHz</p><p>|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB</p><p>|   |=
   |   Bandwidth range: 120000000.0 to 120000000.0 step 0.0 Hz</p><p>|   | =
  |   Connection Type: IQ</p><p>|   |   |   Uses LO offset: No</p>

--b1_yt4UEZ687iUihgikr2ZxfqHpVGvs2v2Y7goikrlVPo--

--===============6949127614481213639==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6949127614481213639==--
